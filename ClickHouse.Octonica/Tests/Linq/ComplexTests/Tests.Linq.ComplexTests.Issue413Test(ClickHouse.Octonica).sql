BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t5.SourceInstrumentCode
FROM
	(
		SELECT DISTINCT
			ins.SourceInstrumentCode as SourceInstrumentCode
		FROM
			T1 t4
				INNER JOIN T2 idx ON t4.InstrumentId = idx.InstrumentId
				INNER JOIN T3 w ON idx.IndexId = w.IndexId
				INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
		WHERE
			startsWith(t4.InstrumentCode, 'aaa') AND t4.CreateDate <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
			ins.SourceInstrumentCode IS NOT NULL
	) t5
ORDER BY
	t5.SourceInstrumentCode

