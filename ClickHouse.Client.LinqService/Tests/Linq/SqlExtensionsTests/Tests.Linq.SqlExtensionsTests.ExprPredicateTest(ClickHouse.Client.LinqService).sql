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
	1,
	2
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
	3,
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	sample_table_temp t
WHERE
	t.id BETWEEN 0 AND value

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS sample_table_temp

