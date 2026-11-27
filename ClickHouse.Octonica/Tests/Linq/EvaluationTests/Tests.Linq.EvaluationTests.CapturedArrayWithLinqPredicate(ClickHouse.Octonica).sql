-- ClickHouse.Octonica ClickHouse
INSERT INTO ClientEvaluatedRecord
(
	ID
)
VALUES
(
	5
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID IN (4, 5, 6)
LIMIT 2

