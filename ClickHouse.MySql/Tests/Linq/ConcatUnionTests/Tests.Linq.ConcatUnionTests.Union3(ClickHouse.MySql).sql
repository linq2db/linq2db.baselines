BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	toBool(true) as c1
FROM
	Parent p
UNION DISTINCT
SELECT
	ch.ParentID as ParentID,
	toBool(false) as c1
FROM
	Child ch

