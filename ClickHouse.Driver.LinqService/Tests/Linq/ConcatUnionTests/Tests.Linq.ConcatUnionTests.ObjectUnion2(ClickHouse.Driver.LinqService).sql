BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p1.ParentID,
	p1.Value1
FROM
	Parent p1
WHERE
	p1.ParentID > 3
UNION DISTINCT
SELECT
	toInt32(NULL) as ParentID,
	toInt32(NULL) as Value1
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

