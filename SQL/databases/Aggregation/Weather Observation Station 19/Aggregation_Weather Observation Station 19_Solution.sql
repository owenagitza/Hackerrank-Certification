USE tutorialdb;

SET @a = (SELECT MIN(LAT_N) FROM STATION);
SET @b = (SELECT MAX(LAT_N) FROM STATION);
SET @c = (SELECT MIN(LONG_W) FROM STATION);
SET @d = (SELECT MAX(LONG_W) FROM STATION);

SELECT ROUND(SQRT(POW((@b - @a), 2) + POW((@d - @c), 2)), 4);