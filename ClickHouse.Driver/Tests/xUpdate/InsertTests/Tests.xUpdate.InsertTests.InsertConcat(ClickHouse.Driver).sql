-- ClickHouse.Driver ClickHouse
ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

-- ClickHouse.Driver ClickHouse
INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	p.ParentID + 1000 as c1,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1
UNION ALL
SELECT
	p_1.ParentID + 1000 as c1,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID = 2

-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	p.ParentID > 1000
ORDER BY
	p.ParentID

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	Parent
DELETE WHERE
	ParentID > 1000

