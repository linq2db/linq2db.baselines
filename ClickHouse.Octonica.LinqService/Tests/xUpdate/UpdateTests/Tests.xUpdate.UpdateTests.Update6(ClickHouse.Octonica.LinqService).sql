BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Parent
UPDATE
	Value1 = 2
WHERE
	ParentID = 1001

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 2

