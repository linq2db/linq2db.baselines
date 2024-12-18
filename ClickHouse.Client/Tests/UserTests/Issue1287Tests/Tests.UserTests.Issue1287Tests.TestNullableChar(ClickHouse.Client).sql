BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.charDataType
FROM
	AllTypes t1
WHERE
	t1.charDataType = '1' AND t1.charDataType IS NOT NULL

