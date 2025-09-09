BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	lowerUTF8(p.Taxonomy)
FROM
	Doctor p
WHERE
	lowerUTF8(p.Taxonomy) = 'psychiatry'

