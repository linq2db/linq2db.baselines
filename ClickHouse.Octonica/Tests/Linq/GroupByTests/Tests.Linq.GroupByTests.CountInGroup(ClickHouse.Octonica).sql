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
(1,toFloat64(1)),
(1,NULL),
(1,toFloat64(3)),
(1,toFloat64(1)),
(1,toFloat64(5)),
(1,toFloat64(6)),
(2,toFloat64(7)),
(2,toFloat64(8)),
(2,toFloat64(9)),
(2,NULL),
(2,toFloat64(11)),
(2,toFloat64(7)),
(3,toFloat64(13)),
(3,toFloat64(16)),
(3,toFloat64(16)),
(3,toFloat64(16)),
(3,NULL),
(3,toFloat64(18))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AggregationData

