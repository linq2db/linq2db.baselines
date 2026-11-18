-- ClickHouse.Octonica ClickHouse
SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID > 2
EXCEPT DISTINCT
SELECT
	p_1.ParentID as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID <= 4

