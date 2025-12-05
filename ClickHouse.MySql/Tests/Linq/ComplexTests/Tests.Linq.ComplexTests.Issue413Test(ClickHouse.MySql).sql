-- ClickHouse.MySql ClickHouse

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	1,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	2,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T3
(
	InstrumentId,
	IndexId
)
VALUES
(
	3,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	1,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T2
(
	InstrumentId,
	IndexId
)
VALUES
(
	2,
	1
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	1,
	'aaa1',
	toDateTime64('2020-02-28 17:54:55.1231234', 7),
	'NOTNULL'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO T1
(
	InstrumentId,
	InstrumentCode,
	CreateDate,
	SourceInstrumentCode
)
VALUES
(
	2,
	'aaa2',
	toDateTime64('2020-02-28 17:54:55.1231234', 7),
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	t8.SourceInstrumentCode
FROM
	(
		SELECT DISTINCT
			t6.SourceInstrumentCode as SourceInstrumentCode
		FROM
			T1 t7
				INNER JOIN T2 t4 ON t7.InstrumentId = t4.InstrumentId
				INNER JOIN T3 t5 ON t4.IndexId = t5.IndexId
				INNER JOIN T1 t6 ON t5.InstrumentId = t6.InstrumentId
		WHERE
			startsWith(t7.InstrumentCode, 'aaa') AND t7.CreateDate <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
			t6.SourceInstrumentCode IS NOT NULL
	) t8
ORDER BY
	t8.SourceInstrumentCode

