BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = toInt32(1)
ORDER BY
	x.ParentID DESC
LIMIT toInt32(1)

