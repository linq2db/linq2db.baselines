-- ClickHouse.Octonica ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
VALUES
(
	1
)

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	TableWithIdentity
UPDATE
	Value = 123
WHERE 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

