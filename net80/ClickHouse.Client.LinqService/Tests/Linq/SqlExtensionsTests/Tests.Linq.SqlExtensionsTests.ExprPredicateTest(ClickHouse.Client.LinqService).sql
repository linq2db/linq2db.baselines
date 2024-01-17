BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_table_temp

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS sample_table_temp
(
	id    Int32,
	value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO sample_table_temp
(
	id,
	value
)
VALUES
(
	toInt32(1),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO sample_table_temp
(
	id,
	value
)
VALUES
(
	toInt32(3),
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	sample_table_temp t
WHERE
	t.id BETWEEN toInt32(0) AND value

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_table_temp

