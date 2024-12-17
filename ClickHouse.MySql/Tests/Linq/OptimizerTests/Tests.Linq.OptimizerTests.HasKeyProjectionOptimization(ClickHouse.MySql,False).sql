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
(1,2,10,100,200,1000,2000,3000,'Str_0'),
(1,3,20,100,300,1000,2000,4000,'Str_1'),
(1,4,30,100,400,1000,2000,5000,'Str_2'),
(2,3,40,200,300,1000,3000,4000,'Str_3'),
(2,4,50,200,400,1000,3000,5000,'Str_4'),
(3,4,60,300,400,1000,4000,5000,'Str_5')

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
(1,2,10,100,200,1000,2000,3000,'Str_0'),
(1,3,20,100,300,1000,2000,4000,'Str_1'),
(1,4,30,100,400,1000,2000,5000,'Str_2'),
(2,3,40,200,300,1000,3000,4000,'Str_3'),
(2,4,50,200,400,1000,3000,5000,'Str_4'),
(3,4,60,300,400,1000,4000,5000,'Str_5')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr,
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey11 = s.DataKey11

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Key1,
	p.Key2,
	p.DataKey11,
	p.DataKey21,
	p.DataKey22,
	p.DataKey31,
	p.DataKey32,
	p.DataKey33,
	p.ValueStr
FROM
	SecondOptimizerData p
		LEFT JOIN FirstOptimizerData a ON a.DataKey11 = p.DataKey11

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr,
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey22 = s.DataKey22 AND a.DataKey21 = s.DataKey21 AND a.Key1 = s.Key1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Key1,
	p.Key2,
	p.DataKey11,
	p.DataKey21,
	p.DataKey22,
	p.DataKey31,
	p.DataKey32,
	p.DataKey33,
	p.ValueStr
FROM
	SecondOptimizerData p
		LEFT JOIN FirstOptimizerData a ON a.DataKey22 = p.DataKey22 AND a.DataKey21 = p.DataKey21 AND a.Key1 = p.Key1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr,
	a.Key1,
	a.Key2,
	a.DataKey11,
	a.DataKey21,
	a.DataKey22,
	a.DataKey31,
	a.DataKey32,
	a.DataKey33,
	a.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData a ON a.DataKey31 = s.DataKey31 AND a.DataKey32 = s.DataKey32 AND a.DataKey33 = s.DataKey33

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Key1,
	p.Key2,
	p.DataKey11,
	p.DataKey21,
	p.DataKey22,
	p.DataKey31,
	p.DataKey32,
	p.DataKey33,
	p.ValueStr
FROM
	SecondOptimizerData p
		LEFT JOIN FirstOptimizerData a ON a.DataKey31 = p.DataKey31 AND a.DataKey32 = p.DataKey32 AND a.DataKey33 = p.DataKey33

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

