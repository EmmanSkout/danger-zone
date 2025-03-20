package org.example.dangerzonejava.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true) // Ignores any extra fields in JSON
public class Trip {

    private String title;
    private String image;
    private String description;
    private int dangerScore;

    // No-argument constructor (needed for Jackson)
    public Trip() {}

    // Constructor with all fields
    public Trip(String title, String image, String description, int dangerScore) {
        this.title = title;
        this.image = image;
        this.description = description;
        this.dangerScore = dangerScore;
    }

    // Getters and Setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public int getDangerScore() { return dangerScore; }
    public void setDangerScore(int dangerScore) { this.dangerScore = dangerScore; }

    @Override
    public String toString() {
        return "Trip{" +
                "title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", dangerScore=" + dangerScore +
                '}';
    }
}
