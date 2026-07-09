-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID,
	toBool(true) as val
FROM
	Parent p
UNION DISTINCT
SELECT
	ch.ParentID as ParentID,
	toBool(false) as val
FROM
	Child ch

