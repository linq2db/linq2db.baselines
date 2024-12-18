BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AggregationData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS AggregationData
(
	GroupId   Int32,
	DataValue Nullable(Float64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	toFloat64(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	toFloat64(3)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	toFloat64(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	toFloat64(5)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	1,
	toFloat64(6)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	toFloat64(7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	toFloat64(8)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	toFloat64(9)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	toFloat64(11)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	2,
	toFloat64(7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	toFloat64(13)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	toFloat64(16)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	toFloat64(16)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	toFloat64(16)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	3,
	toFloat64(18)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_1.GroupId,
	avgOrNull(g_1.DataValue),
	avgOrNull(g_1.DataValue),
	avgOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(DISTINCT g_1.DataValue),
	avgOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
WHERE
	g_1.DataValue IS NOT NULL
GROUP BY
	g_1.GroupId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AggregationData

