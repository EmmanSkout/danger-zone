package org.example.dangerzonejava.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true) // Ignores any extra fields in JSON
public class Trip {
    private String id;
    private String title;
    private String image;
    private String description;
    private int dangerScore;


    @Override
    public String toString() {
        return "Trip{" +
                "id='" + id + '\'' +
                "title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", dangerScore=" + dangerScore +
                '}';
    }
}
