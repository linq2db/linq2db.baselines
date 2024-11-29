BeforeExecute
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

DROP TABLE IF EXISTS AggregationData

