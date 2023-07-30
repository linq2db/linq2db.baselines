BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
(toInt32(1),toInt32(2),toInt32(10),toInt32(100),toInt32(200),toInt32(1000),toInt32(2000),toInt32(3000),'Str_0'),
(toInt32(1),toInt32(3),toInt32(20),toInt32(100),toInt32(300),toInt32(1000),toInt32(2000),toInt32(4000),'Str_1'),
(toInt32(1),toInt32(4),toInt32(30),toInt32(100),toInt32(400),toInt32(1000),toInt32(2000),toInt32(5000),'Str_2'),
(toInt32(2),toInt32(3),toInt32(40),toInt32(200),toInt32(300),toInt32(1000),toInt32(3000),toInt32(4000),'Str_3'),
(toInt32(2),toInt32(4),toInt32(50),toInt32(200),toInt32(400),toInt32(1000),toInt32(3000),toInt32(5000),'Str_4'),
(toInt32(3),toInt32(4),toInt32(60),toInt32(300),toInt32(400),toInt32(1000),toInt32(4000),toInt32(5000),'Str_5')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
(toInt32(1),toInt32(2),toInt32(10),toInt32(100),toInt32(200),toInt32(1000),toInt32(2000),toInt32(3000),'Str_0'),
(toInt32(1),toInt32(3),toInt32(20),toInt32(100),toInt32(300),toInt32(1000),toInt32(2000),toInt32(4000),'Str_1'),
(toInt32(1),toInt32(4),toInt32(30),toInt32(100),toInt32(400),toInt32(1000),toInt32(2000),toInt32(5000),'Str_2'),
(toInt32(2),toInt32(3),toInt32(40),toInt32(200),toInt32(300),toInt32(1000),toInt32(3000),toInt32(4000),'Str_3'),
(toInt32(2),toInt32(4),toInt32(50),toInt32(200),toInt32(400),toInt32(1000),toInt32(3000),toInt32(5000),'Str_4'),
(toInt32(3),toInt32(4),toInt32(60),toInt32(300),toInt32(400),toInt32(1000),toInt32(4000),toInt32(5000),'Str_5')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

