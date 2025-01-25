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
(1,'Str_1'),
(2,'Str_2'),
(3,'Str_3'),
(4,'Str_4'),
(5,'Str_5'),
(6,'Str_6'),
(7,'Str_7'),
(8,'Str_8'),
(9,'Str_9'),
(10,'Str_10'),
(11,'Str_11'),
(12,'Str_12'),
(13,'Str_13'),
(14,'Str_14'),
(15,'Str_15'),
(16,'Str_16'),
(17,'Str_17'),
(18,'Str_18'),
(19,'Str_19'),
(20,'Str_20')

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

