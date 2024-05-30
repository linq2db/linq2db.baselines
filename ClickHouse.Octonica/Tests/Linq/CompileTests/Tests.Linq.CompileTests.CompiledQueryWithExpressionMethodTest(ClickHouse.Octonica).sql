BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = 1
ORDER BY
	x.ParentID DESC
LIMIT 1

