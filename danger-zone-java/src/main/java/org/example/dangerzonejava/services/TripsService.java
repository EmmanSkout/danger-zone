package org.example.dangerzonejava.services;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.example.dangerzonejava.models.Trip;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service
public class TripsService {


    public List<Trip> loadTripsFromJson() {
        ObjectMapper objectMapper = new ObjectMapper();
        try (InputStream inputStream = new ClassPathResource("trips.json").getInputStream()) {
            return objectMapper.readValue(inputStream, new TypeReference<List<Trip>>() {
            });
        } catch (IOException e) {
            throw new RuntimeException("Error reading JSON file", e);
        }
    }
}
