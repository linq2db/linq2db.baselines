﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int32,
	KeyValue1 String,
	Value1    Nullable(String),

	 PRIMARY KEY (Id, KeyValue1)
)
ENGINE = MergeTree()
ORDER BY (Id, KeyValue1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	KeyValue1,
	Value1
)
VALUES
(
	toInt32(1),
	'K1',
	'V1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id        Int32,
	KeyValue2 String,
	Value2    Nullable(String),

	 PRIMARY KEY (Id, KeyValue2)
)
ENGINE = MergeTree()
ORDER BY (Id, KeyValue2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	KeyValue2,
	Value2
)
VALUES
(
	toInt32(1),
	'K1',
	'V1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id         Int32,
	KeyValueF1 String,
	ValueF1    Nullable(String),

	 PRIMARY KEY (Id, KeyValueF1)
)
ENGINE = MergeTree()
ORDER BY (Id, KeyValueF1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	KeyValueF1,
	ValueF1
)
VALUES
(
	toInt32(1),
	'K1',
	'V1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass
(
	Id         Int32,
	KeyValueF2 String,
	ValueF2    Nullable(String),

	 PRIMARY KEY (Id, KeyValueF2)
)
ENGINE = MergeTree()
ORDER BY (Id, KeyValueF2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SampleClass
(
	Id,
	KeyValueF2,
	ValueF2
)
VALUES
(
	toInt32(1),
	'K1',
	'V1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SampleClass

