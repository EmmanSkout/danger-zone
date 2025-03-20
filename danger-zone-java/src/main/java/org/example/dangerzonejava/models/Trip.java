package org.example.dangerzonejava.models;

public class Trip {

    public Trip(String title,String image,String description){
        this.title = title;
        this.image = image;
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getimage() {
        return image;
    }

    public void setimage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    String title;
    String image;

    public int getDangerScore() {
        return dangerScore;
    }

    public void setDangerScore(int dangerScore) {
        this.dangerScore = dangerScore;
    }

    int dangerScore;
    String description;
}
