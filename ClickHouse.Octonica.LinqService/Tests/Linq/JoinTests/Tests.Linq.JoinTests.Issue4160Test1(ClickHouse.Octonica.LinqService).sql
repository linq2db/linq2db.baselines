BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT DISTINCT
	t1.Value_1
FROM
	Issue4160Person pe
		LEFT JOIN (
			SELECT
				cc.Name as Value_1,
				ROW_NUMBER() OVER (PARTITION BY cc.Code ORDER BY cc.Code) as rn,
				cc.Code as Code
			FROM
				Issue4160City cc
		) t1 ON (t1.Code = pe.Code OR t1.Code IS NULL AND pe.Code IS NULL) AND t1.rn <= 1

