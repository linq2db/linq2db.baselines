BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Parent
(
	Value1,
	ParentID
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
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
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001 AND p.Value1 = 2

