BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	f.Key1,
	f.Key2,
	f.DataKey11,
	f.DataKey21,
	f.DataKey22,
	f.DataKey31,
	f.DataKey32,
	f.DataKey33,
	f.ValueStr,
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr
FROM
	(
		SELECT
			v.Key1 as Key1,
			v.Key2 as Key2,
			v.DataKey11 as DataKey11,
			v.DataKey21 as DataKey21,
			v.DataKey22 as DataKey22,
			v.DataKey31 as DataKey31,
			v.DataKey32 as DataKey32,
			v.DataKey33 as DataKey33,
			v.ValueStr as ValueStr
		FROM
			SecondOptimizerData v
		WHERE
			v.Key1 <> 1
	) s
		LEFT JOIN FirstOptimizerData f ON f.Key1 = s.Key1 AND f.Key2 = s.Key2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	f.Key1,
	f.Key2,
	f.DataKey11,
	f.DataKey21,
	f.DataKey22,
	f.DataKey31,
	f.DataKey32,
	f.DataKey33,
	f.ValueStr,
	s.Key1,
	s.Key2,
	s.DataKey11,
	s.DataKey21,
	s.DataKey22,
	s.DataKey31,
	s.DataKey32,
	s.DataKey33,
	s.ValueStr
FROM
	SecondOptimizerData s
		LEFT JOIN FirstOptimizerData f ON f.Key1 = s.Key1 AND f.Key2 = s.Key2
WHERE
	s.Key1 <> 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS SecondOptimizerData

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS FirstOptimizerData

