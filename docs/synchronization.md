# MArmorF Synchronization

## Compare with public dataset
### MArmorF vs EuRoCMAVDatase
| Sensor      | Jitter Compare<br/> EuRoCMAVDatase(red), MArmorF data(blue)     |
| ----------  | :-----------:  |
| IM    | <img src="../images/sync/imu_marmorf_vs_EuRoCMAVDatase.png" width="400">      |


### MArmorF vs Cartographer
| Sensor      | Jitter Compare<br/>Cartographer(red), MArmorF data(blue)     | Sensor      | Jitter Compare<br/>not sync(red), MArmorF data(blue)|
| ----------  | :-----------:  | :-----------:  | :-----------:  |
| IM    | <img src="../images/sync/imu_marmorf_vs_cartographer.png" width="400">      |3d Lidar|<img src="../images/sync/lidar_marmorf_vs_cartographer.png" width="400">|

### MArmorF vs Autoware
| Sensor      | Jitter Compare<br/>Autoware(red), MArmorF data(blue)     | Sensor      | Jitter Compare<br/> Autoware(red), MArmorF data(blue)|
| ----------  | :-----------:  | :-----------:  | :-----------:  |
| IM    | <img src="../images/sync/imu_marmorf_vs_autoware_imu.png" width="400">      |3d Lidar|<img src="../images/sync/lidar_marmorf_vs_autoware.png" width="400">|

## Compare with unsync data
| Sensor      | Jitter Compare<br/>not sync(red), MArmorF data(blue)     | Sensor      | Jitter Compare<br/>not sync(red), MArmorF data(blue)|
| ----------  | :-----------:  | :-----------:  | :-----------:  |
| IMU<br/>(need imu support)     | <img src="../images/sync/imu_marmorf_vs_unsync.png" width="400">      |3d Lidar|<img src="../images/sync/lidar_marmorf_vs_unsync.png" width="400">|
| Camera<br/>     | <img src="../images/sync/camera_marmorf_vs_unsync.png" width="400">      |||
