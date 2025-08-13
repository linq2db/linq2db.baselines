BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO TableWithIdentity
(
	Value
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	TableWithIdentity
UPDATE
	Value = 123
WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

