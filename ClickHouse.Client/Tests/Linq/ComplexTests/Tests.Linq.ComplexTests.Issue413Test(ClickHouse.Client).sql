﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T1

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS T1
(
	InstrumentId         Int32,
	InstrumentCode       Nullable(String),
	CreateDate           DateTime64(7),
	SourceInstrumentCode Nullable(String),

	PRIMARY KEY (InstrumentId)
)
ENGINE = MergeTree()
ORDER BY InstrumentId

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS T2
(
	InstrumentId Int32,
	IndexId      Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T3

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS T3
(
	InstrumentId Int32,
	IndexId      Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t4.SourceInstrumentCode
FROM
	(
		SELECT DISTINCT
			ins.SourceInstrumentCode as SourceInstrumentCode
		FROM
			T1 _
				INNER JOIN T2 idx ON _.InstrumentId = idx.InstrumentId
				INNER JOIN T3 w ON idx.IndexId = w.IndexId
				INNER JOIN T1 ins ON w.InstrumentId = ins.InstrumentId
		WHERE
			startsWith(_.InstrumentCode, 'aaa') AND _.CreateDate <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
			ins.SourceInstrumentCode IS NOT NULL
	) t4
ORDER BY
	t4.SourceInstrumentCode

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS T1

