-- YDB Ydb
SELECT
	t2.Value_1 as Value_1,
	t2.HasValue as HasValue
FROM
	Request a
		LEFT JOIN (
			SELECT
				t1.HasValue as HasValue,
				t1.Value_1 as Value_1,
				t1.RequestId as RequestId
			FROM
				(
					SELECT
						a_Metrics.`Value` as HasValue,
						a_Metrics.`Value` IS NOT NULL as Value_1,
						ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
						a_Metrics.RequestId as RequestId
					FROM
						Metric a_Metrics
				) t1
			WHERE
				t1.rn = 1
		) t2 ON a.Id = t2.RequestId

