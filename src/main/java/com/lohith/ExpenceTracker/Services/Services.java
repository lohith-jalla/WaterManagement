package com.lohith.ExpenceTracker.Services;

import com.lohith.ExpenceTracker.Repositories.WaterRepo;
import com.lohith.ExpenceTracker.models.WaterMeter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


@Component
@Service
public class Services {

    WaterRepo r;
    public Services(WaterRepo r) {
        this.r = r;
    }

    public void update(int id,Double reading,Double consumption,String status,String location){
       WaterMeter m = r.findWaterMeterByMeterId(id);
        m.setLocation(location);
        m.setCurrentReading(reading);
        m.setWaterConsumption(consumption);
        m.setStatus(status);

        r.save(m);
    }

}
