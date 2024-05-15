BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS FirstOptimizerData
(
	Key1      Int32,
	Key2      Int32,
	DataKey11 Int32,
	DataKey21 Int32,
	DataKey22 Int32,
	DataKey31 Int32,
	DataKey32 Int32,
	DataKey33 Int32,
	ValueStr  Nullable(String),

	PRIMARY KEY (Key1, Key2)
)
ENGINE = MergeTree()
ORDER BY (Key1, Key2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	2,
	10,
	100,
	200,
	1000,
	2000,
	3000,
	'Str_0'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	3,
	20,
	100,
	300,
	1000,
	2000,
	4000,
	'Str_1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	4,
	30,
	100,
	400,
	1000,
	2000,
	5000,
	'Str_2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	2,
	3,
	40,
	200,
	300,
	1000,
	3000,
	4000,
	'Str_3'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	2,
	4,
	50,
	200,
	400,
	1000,
	3000,
	5000,
	'Str_4'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO FirstOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	3,
	4,
	60,
	300,
	400,
	1000,
	4000,
	5000,
	'Str_5'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SecondOptimizerData
(
	Key1      Int32,
	Key2      Int32,
	DataKey11 Int32,
	DataKey21 Int32,
	DataKey22 Int32,
	DataKey31 Int32,
	DataKey32 Int32,
	DataKey33 Int32,
	ValueStr  Nullable(String),

	PRIMARY KEY (Key1, Key2)
)
ENGINE = MergeTree()
ORDER BY (Key1, Key2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	2,
	10,
	100,
	200,
	1000,
	2000,
	3000,
	'Str_0'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	3,
	20,
	100,
	300,
	1000,
	2000,
	4000,
	'Str_1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	1,
	4,
	30,
	100,
	400,
	1000,
	2000,
	5000,
	'Str_2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	2,
	3,
	40,
	200,
	300,
	1000,
	3000,
	4000,
	'Str_3'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	2,
	4,
	50,
	200,
	400,
	1000,
	3000,
	5000,
	'Str_4'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SecondOptimizerData
(
	Key1,
	Key2,
	DataKey11,
	DataKey21,
	DataKey22,
	DataKey31,
	DataKey32,
	DataKey33,
	ValueStr
)
VALUES
(
	3,
	4,
	60,
	300,
	400,
	1000,
	4000,
	5000,
	'Str_5'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

