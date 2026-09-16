# Sun path on Nov 7th 2025

for h in {00..12}; do
    sunposition -lat 13.608 -lon 77.428 -e 681 -dt 0530 --csv \
        -t "2025-11-07T${h}:00" >> ev_tracksun.csv
done

awk -F',' 'BEGIN {OFS=","} {$9 = 90 - $9; print}' \
    ev_tracksun.csv > ev_tracksun_elevation.csv


# Sun path on 21st June 2025 (Summer solstice)

for h in {00..12}; do
    sunposition -lat 13.608 -lon 77.428 -e 681 -dt 0530 --csv \
        -t "2025-06-21T${h}:00" >> ss_tracksun.csv
done

awk -F',' 'BEGIN {OFS=","} {$9 = 90 - $9; print}' \
    ss_tracksun.csv > ss_tracksun_elevation.csv


# Sun path on 21st December 2025 (Winter solstice)

for h in {00..12}; do
    sunposition -lat 13.608 -lon 77.428 -e 681 -dt 0530 --csv \
        -t "2025-12-21T${h}:00" >> ws_tracksun.csv
done

awk -F',' 'BEGIN {OFS=","} {$9 = 90 - $9; print}' \
    ws_tracksun.csv > ws_tracksun_elevation.csv
