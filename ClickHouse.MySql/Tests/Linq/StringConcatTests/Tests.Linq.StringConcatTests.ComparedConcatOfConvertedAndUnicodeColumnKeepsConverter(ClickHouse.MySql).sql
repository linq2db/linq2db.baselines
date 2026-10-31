-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(concat(p.Conv, p.Title)) = 'x:c1T'

