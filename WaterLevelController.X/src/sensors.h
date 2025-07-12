#ifndef SENSORS_H
#define SENSORS_H

#include <xc.h>
#include <stdbool.h>

void update_sensor_values(void);
bool is_low_level(void);
bool is_high_level(void);
bool is_dry_run_triggered(void);

#endif