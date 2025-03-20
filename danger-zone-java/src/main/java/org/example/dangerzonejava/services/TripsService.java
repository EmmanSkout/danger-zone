package org.example.dangerzonejava.services;

import org.example.dangerzonejava.models.Trip;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class TripsService {


    public List<Trip> getTrips(){
        Trip trip = new Trip();
        trip.setId("1");
        trip.setImage("https://images.unsplash.com/photo-1612838320302-4b3b3b3b3b3b");
        trip.setTitle("Trip to the moon");
        trip.setDangerScore(10);
        trip.setDescription("This is a trip to the moon");

        return Collections.singletonList(trip);
    }
}
