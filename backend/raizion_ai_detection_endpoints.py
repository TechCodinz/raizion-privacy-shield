
from fastapi import FastAPI
from random import uniform, choice

app = FastAPI()

@app.get("/scan-exposure")
def scan_exposure():
    exposure_level = round(uniform(0, 1), 2)
    exposure_detected = exposure_level > 0.7
    return {
        "exposure_level": exposure_level,
        "exposure_detected": exposure_detected
    }

@app.get("/detect-intruder")
def detect_intruder():
    signals = ['safe_wifi', 'raizion_drone', 'unknown_device', 'phone_cam']
    signal = choice(signals)
    intruder_detected = signal not in ['safe_wifi', 'raizion_drone']
    return {
        "active_signal": signal,
        "intruder_detected": intruder_detected
    }
