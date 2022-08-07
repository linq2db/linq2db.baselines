BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_class

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS sample_class
(
	id    Int32,
	value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(toInt32(1),'Str_1'),
(toInt32(2),'Str_2'),
(toInt32(3),'Str_3'),
(toInt32(4),'Str_4'),
(toInt32(5),'Str_5'),
(toInt32(6),'Str_6'),
(toInt32(7),'Str_7'),
(toInt32(8),'Str_8'),
(toInt32(9),'Str_9'),
(toInt32(10),'Str_10'),
(toInt32(11),'Str_11'),
(toInt32(12),'Str_12'),
(toInt32(13),'Str_13'),
(toInt32(14),'Str_14'),
(toInt32(15),'Str_15'),
(toInt32(16),'Str_16'),
(toInt32(17),'Str_17'),
(toInt32(18),'Str_18'),
(toInt32(19),'Str_19'),
(toInt32(20),'Str_20')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_other_class

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS sample_other_class
(
	id        Int32,
	parent_id Int32,
	value     Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_other_class

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_class

