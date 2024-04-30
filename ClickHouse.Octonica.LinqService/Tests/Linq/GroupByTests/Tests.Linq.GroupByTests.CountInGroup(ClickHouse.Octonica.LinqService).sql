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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AggregationData

