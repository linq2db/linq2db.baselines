-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(concat(p.Conv, p.Title)) = 'x:c1T'

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	'x:c1T' = (concat(p.Conv, p.Title))

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(concat(p.Conv, p.Title)) IN ('x:c1T')

