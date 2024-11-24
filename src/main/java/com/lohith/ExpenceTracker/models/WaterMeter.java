package com.lohith.ExpenceTracker.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class WaterMeter {
    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE)
    private int meterId;
    private String location;
    private Double currentReading;
    private Double waterConsumption;
    private String status;

    public WaterMeter() {}

    public WaterMeter(int meterId, String location, Double currentReading, Double waterConsumption, String status) {
        this.meterId = meterId;
        this.location = location;
        this.currentReading = currentReading;
        this.waterConsumption = waterConsumption;
        this.status = status;
    }

    public int getMeterId() {
        return meterId;
    }

    public void setMeterId(int meterId) {
        this.meterId = meterId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Double getCurrentReading() {
        return currentReading;
    }

    public void setCurrentReading(Double currentReading) {
        this.currentReading = currentReading;
    }

    public Double getWaterConsumption() {
        return waterConsumption;
    }

    public void setWaterConsumption(Double waterConsumption) {
        this.waterConsumption = waterConsumption;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "WaterMeter{" +
                "waterConsumption=" + waterConsumption +
                '}';
    }
}
