﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Request

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Request
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.not_null,
	t1.Value_1,
	t1.HasValue
FROM
	Request a
		LEFT JOIN (
			SELECT
				CASE
					WHEN a_Metrics.Value IS NOT NULL THEN true
					ELSE false
				END as Value_1,
				a_Metrics.Value as HasValue,
				1 as not_null,
				ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
				a_Metrics.RequestId as RequestId
			FROM
				Metric a_Metrics
		) t1 ON a.Id = t1.RequestId AND t1.rn <= 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Metric

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Request

