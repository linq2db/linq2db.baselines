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
-- ClickHouse.Client ClickHouse

SELECT
	m_1.GroupId,
	d_1.DataValue
FROM
	(
		SELECT DISTINCT
			t.GroupId as GroupId
		FROM
			AggregationData t
		WHERE
			t.DataValue IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d.DataValue as DataValue,
				d.GroupId as GroupId
			FROM
				AggregationData d
			WHERE
				d.DataValue IS NOT NULL
		) d_1 ON m_1.GroupId = d_1.GroupId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.GroupId,
	d_1.DataValue
FROM
	(
		SELECT DISTINCT
			t.GroupId as GroupId
		FROM
			AggregationData t
		WHERE
			t.DataValue IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d.DataValue as DataValue,
				d.GroupId as GroupId
			FROM
				AggregationData d
			WHERE
				d.DataValue IS NOT NULL AND d.DataValue % 2 = toFloat64(0)
		) d_1 ON m_1.GroupId = d_1.GroupId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.GroupId,
	d_1.DataValue
FROM
	(
		SELECT DISTINCT
			t.GroupId as GroupId
		FROM
			AggregationData t
		WHERE
			t.DataValue IS NOT NULL
	) m_1
		INNER JOIN (
			SELECT DISTINCT
				d.DataValue as DataValue,
				d.GroupId as GroupId
			FROM
				AggregationData d
			WHERE
				d.DataValue IS NOT NULL AND d.DataValue % 2 = toFloat64(0)
		) d_1 ON m_1.GroupId = d_1.GroupId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_1.GroupId,
	COUNT(*),
	COUNT(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT g_1.DataValue),
	COUNT(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN 1
		ELSE NULL
	END)
FROM
	AggregationData g_1
WHERE
	g_1.DataValue IS NOT NULL
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

