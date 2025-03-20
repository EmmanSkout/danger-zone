package org.example.dangerzonejava.models;

import lombok.Data;

@Data

public class Trip {
    private String id;
    private String title;
    private String image;
    private int dangerScore;
    private String description;
}
