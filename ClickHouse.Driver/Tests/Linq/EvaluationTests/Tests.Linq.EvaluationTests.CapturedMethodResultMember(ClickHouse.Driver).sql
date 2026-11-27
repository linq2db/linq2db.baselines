-- ClickHouse.Driver ClickHouse
INSERT INTO ClientEvaluatedRecord
(
	ID
)
VALUES
(
	5
)

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = 5
LIMIT 2

