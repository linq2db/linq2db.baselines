BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lowerUTF8(p.Taxonomy)
FROM
	Doctor p
WHERE
	lowerUTF8(p.Taxonomy) = 'psychiatry' AND lowerUTF8(p.Taxonomy) IS NOT NULL

