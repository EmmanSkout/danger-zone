package org.example.dangerzonejava.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.PostConstruct;
import org.example.dangerzonejava.models.Trip;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service
public class TripsService {
    private List<Trip> trips;

    @PostConstruct
    public void setupTrips() {
        ObjectMapper objectMapper = new ObjectMapper();
        try (InputStream inputStream = new ClassPathResource("trips.json").getInputStream()) {
            trips = objectMapper.readValue(inputStream, new TypeReference<>() {
            });
        } catch (IOException e) {
            trips = List.of();
            throw new RuntimeException("Error reading JSON file", e);
        }
    }

    public List<Trip> getTrips() {
        return trips;
    }

    public Trip getTrip(String id) {
        return trips.stream()
                .filter(trip -> trip.getId().equals(id))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Invalid trip ID"));
    }
}
