# ---------------------------------------
#  _____  __  __ _______        __   ___  
# |  __ \|  \/  |__   __|      /_ | / _ \ 
# | |__) | \  / |  | |    __   _| || | | |
# |  ___/| |\/| |  | |    \ \ / / || | | |
# | |    | |  | |  | |     \ V /| || |_| |
# |_|    |_|  |_|  |_|      \_/ |_(_)___/ 
# ----------------------------------------
#  Version 1.0
#  microPython Firmware esp32spiram-idf3-20191220-v1.12
#  Filename : wifi_connect.py

from network import WLAN
from usocket import getaddrinfo
from machine import Timer, reset
import logging
import reqst

def station_connected(station: WLAN, wifiLogger: Logger):
    #TODO: remove print
    print("Connected...Testing Access...")
    wifiLogger.info("Connected...Testing Access...")
    # init harware timer
    #timer = Timer(0)
    #timer.init(period=1000, mode=Timer.ONE_SHOT,callback=handlerTimer)
    #resolved = getaddrinfo("www.example.com", 80)
    #timer.deinit()
    # if resolved == []:
    #     #TODO: remove print
    #     print("DNS Lookup [Failed]")
    #     wifiLogger.debug("DNS Lookup [Failed]")
    #     station.disconnect()
    # else:
        #TODO: remove print
        #print("DNS Lookup [OK]")
        #wifiLogger.debug("DNS Lookup [OK]")

        #timer = Timer(0)
        #timer.init(period=3000, mode=Timer.ONE_SHOT,callback=handlerTimer)
    reqst.test_dns_internet("https://www.example.com")
        # socket closing is done in reqst if redirected
        #response.close()
        #timer.deinit()
        #print("Data sent.")
