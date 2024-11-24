package com.lohith.ExpenceTracker.Repositories;

import com.lohith.ExpenceTracker.models.WaterMeter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface WaterRepo extends JpaRepository<WaterMeter, Integer> {
    WaterMeter findWaterMeterByMeterId(int meterId);
}
