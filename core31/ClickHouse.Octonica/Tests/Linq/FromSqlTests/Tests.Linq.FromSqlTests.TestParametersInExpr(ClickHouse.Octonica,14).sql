BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS sample_class

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS sample_class
(
	id    Int32,
	value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	s.value,
	s.id
FROM
	sample_class c_1
		INNER JOIN (
			SELECT * FROM sample_class where id >= toInt64(1) and id < toInt32(14)
		) s ON s.id = c_1.id
WHERE
	s.id > toInt32(10)
ORDER BY
	s.id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= toInt32(1) AND t.id < toInt32(14) AND t.id > toInt32(10)
ORDER BY
	t.id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS sample_class

