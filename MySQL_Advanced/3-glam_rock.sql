-- List bands by lifespan (years active)

SELECT
    band_name,
    IFNULL(split, YEAR(CURDATE())) - formed AS lifespan
FROM metal_bands
ORDER BY lifespan DESC;
