# 1
SELECT dest FROM flights
ORDER BY distance DESC LIMIT 1;

# 2
SELECT engines, tailnum, Max(seats) FROM planes
GROUP BY engines
ORDER BY engines;

# 3
SELECT COUNT(*) FROM flights;

# 4
SELECT carrier, count(*) as total_flights FROM flights
GROUP BY carrier
ORDER BY carrier;

# 5
SELECT carrier, count(*) as total_flights FROM flights
GROUP BY carrier
ORDER BY total_flights DESC;

# 6
SELECT carrier, count(*) as total_flights FROM flights
GROUP BY carrier
ORDER BY total_flights DESC LIMIT 5;

# 7
SELECT carrier, count(*) as total_flights FROM flights WHERE distance > 1000
GROUP BY carrier
ORDER BY total_flights DESC LIMIT 5;

# 8 What is the average distance of the carrier with the shortest average flight?
SELECT carrier, AVG(distance) FROM flights
GROUP BY carrier
ORDER BY AVG(distance) LIMIT 1;
