#include "sensors.h"
#include "adc.h"

#define ADC_LOW_LEVEL      7
#define ADC_HIGH_LEVEL     6
#define ADC_DRY_SENSOR     5
#define THRESHOLD_VOLTAGE  2

static float low_val = 0;
static float high_val = 0;
static float dry_val = 0;

void update_sensor_values(void) {
    low_val = read_adc_voltage(ADC_LOW_LEVEL);
    high_val = read_adc_voltage(ADC_HIGH_LEVEL);
    dry_val = read_adc_voltage(ADC_DRY_SENSOR);
}

bool is_low_level(void) {
    return (low_val <= THRESHOLD_VOLTAGE);
}

bool is_high_level(void) {
    return (high_val >= THRESHOLD_VOLTAGE);
}

bool is_dry_run_triggered(void) {
    return (dry_val <= THRESHOLD_VOLTAGE);
}