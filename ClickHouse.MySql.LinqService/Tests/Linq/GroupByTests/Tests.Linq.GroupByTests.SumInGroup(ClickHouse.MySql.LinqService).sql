﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AggregationData

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AggregationData
(
	GroupId   Int32,
	DataValue Nullable(Float64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.GroupId,
	sumOrNull(g_1.DataValue),
	sumOrNull(g_1.DataValue),
	sumOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(DISTINCT g_1.DataValue),
	sumOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AggregationData

