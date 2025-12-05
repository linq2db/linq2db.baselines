-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1001
)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
UPDATE
	ParentID = ParentID + 1
WHERE
	ParentID = 1001

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1002

