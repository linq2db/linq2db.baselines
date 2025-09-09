BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p1.ParentID,
	p1.Value1,
	p1.ParentID + 1 as ParentID_1
FROM
	Parent p1
WHERE
	p1.ParentID > 3
UNION DISTINCT
SELECT
	p2.ParentID as ParentID,
	p2.Value1 as Value1,
	p2.ParentID + 1 as ParentID_1
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

