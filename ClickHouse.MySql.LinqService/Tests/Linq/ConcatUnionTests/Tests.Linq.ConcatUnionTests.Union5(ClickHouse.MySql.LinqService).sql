BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
UNION DISTINCT
SELECT
	p2.ParentID as ParentID,
	toInt32(NULL) as Value1
FROM
	Parent p2

