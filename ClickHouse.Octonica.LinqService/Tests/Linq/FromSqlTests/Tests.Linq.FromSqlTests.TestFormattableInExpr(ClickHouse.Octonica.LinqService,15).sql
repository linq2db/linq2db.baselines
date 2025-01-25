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
(
	1,
	'Str_1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	2,
	'Str_2'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	3,
	'Str_3'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	4,
	'Str_4'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	5,
	'Str_5'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	6,
	'Str_6'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	7,
	'Str_7'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	8,
	'Str_8'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	9,
	'Str_9'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	10,
	'Str_10'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	11,
	'Str_11'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	12,
	'Str_12'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	13,
	'Str_13'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	14,
	'Str_14'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	15,
	'Str_15'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	16,
	'Str_16'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	17,
	'Str_17'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	18,
	'Str_18'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	19,
	'Str_19'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO sample_class
(
	id,
	value
)
VALUES
(
	20,
	'Str_20'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.value,
	s.id
FROM
	sample_class c_1
		INNER JOIN (
			SELECT * FROM sample_class where id >= 5 and id < 15
		) s ON s.id = c_1.id
WHERE
	s.id > 10
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
	t.id >= 5 AND t.id < 15 AND t.id > 10
ORDER BY
	t.id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS sample_class

