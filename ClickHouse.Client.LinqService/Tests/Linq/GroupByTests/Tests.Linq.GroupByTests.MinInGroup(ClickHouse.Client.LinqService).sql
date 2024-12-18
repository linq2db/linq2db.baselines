BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AggregationData

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS AggregationData
(
	GroupId   Int32,
	DataValue Nullable(Float64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	g_1.GroupId,
	minOrNull(g_1.DataValue),
	minOrNull(g_1.DataValue),
	minOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(DISTINCT g_1.DataValue),
	minOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) AND g_1.DataValue IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AggregationData

