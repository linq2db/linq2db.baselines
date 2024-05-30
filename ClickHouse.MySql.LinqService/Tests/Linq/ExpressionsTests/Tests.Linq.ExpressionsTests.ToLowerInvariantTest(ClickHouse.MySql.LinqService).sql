BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Taxonomy
FROM
	Doctor p
WHERE
	lowerUTF8(p.Taxonomy) = 'psychiatry'

