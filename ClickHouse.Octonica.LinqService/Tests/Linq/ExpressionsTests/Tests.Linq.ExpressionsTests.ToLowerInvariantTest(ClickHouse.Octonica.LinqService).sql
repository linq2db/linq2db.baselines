BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Taxonomy
FROM
	Doctor p
WHERE
	lowerUTF8(p.Taxonomy) = 'psychiatry'

