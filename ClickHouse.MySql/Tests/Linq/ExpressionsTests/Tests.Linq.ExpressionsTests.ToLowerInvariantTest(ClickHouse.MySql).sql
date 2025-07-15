BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	lowerUTF8(p.Taxonomy)
FROM
	Doctor p
WHERE
	lowerUTF8(p.Taxonomy) = 'psychiatry'

