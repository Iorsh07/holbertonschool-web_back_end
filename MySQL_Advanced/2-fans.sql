-- List bands by longevity

SELECT band_name,
       (IFNULL(split, YEAR(CURDATE())) - formed) AS longevity
FROM metal_bands
ORDER BY longevity DESC;
