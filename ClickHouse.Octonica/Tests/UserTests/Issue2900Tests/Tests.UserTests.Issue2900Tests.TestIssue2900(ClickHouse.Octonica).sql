BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Request

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Request
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Metric
(
	Id        Int32,
	RequestId Int32,
	Value     Nullable(Float64),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.HasValue,
	t1.Value_1
FROM
	Request a
		LEFT JOIN (
			SELECT
				a_Metrics.Value as Value_1,
				CASE
					WHEN a_Metrics.Value IS NOT NULL THEN true
					ELSE false
				END as HasValue,
				ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
				a_Metrics.RequestId as RequestId
			FROM
				Metric a_Metrics
		) t1 ON a.Id = t1.RequestId AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Request

