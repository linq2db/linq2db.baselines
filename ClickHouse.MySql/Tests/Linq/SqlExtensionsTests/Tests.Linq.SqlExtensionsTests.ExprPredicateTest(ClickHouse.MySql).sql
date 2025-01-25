BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS sample_table_temp

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS sample_table_temp
(
	id    Int32,
	value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO sample_table_temp
(
	id,
	value
)
VALUES
(1,2),
(3,2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	sample_table_temp t
WHERE
	t.id BETWEEN 0 AND value

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS sample_table_temp

