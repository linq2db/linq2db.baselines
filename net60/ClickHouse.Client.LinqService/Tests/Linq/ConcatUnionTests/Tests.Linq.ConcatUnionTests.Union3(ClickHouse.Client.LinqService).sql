BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	true
FROM
	Parent p
UNION DISTINCT
SELECT
	ch.ParentID,
	false
FROM
	Child ch

