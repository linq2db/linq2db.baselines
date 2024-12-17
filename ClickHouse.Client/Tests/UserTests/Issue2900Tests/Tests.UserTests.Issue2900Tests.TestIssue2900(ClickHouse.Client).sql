BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Request

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Request
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.cond_1,
	t1.cond
FROM
	Request a
		LEFT JOIN (
			SELECT
				a_Metrics.Value as cond,
				CASE
					WHEN a_Metrics.Value IS NOT NULL THEN true
					ELSE false
				END as cond_1,
				ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
				a_Metrics.RequestId as RequestId
			FROM
				Metric a_Metrics
		) t1 ON a.Id = t1.RequestId AND t1.rn <= 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Request

