BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.cond_1,
	t1.cond
FROM
	Request a
		LEFT JOIN (
			SELECT
				a_Metrics.Value as cond,
				a_Metrics.Value IS NOT NULL as cond_1,
				ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
				a_Metrics.RequestId as RequestId
			FROM
				Metric a_Metrics
		) t1 ON a.Id = t1.RequestId AND t1.rn <= 1

