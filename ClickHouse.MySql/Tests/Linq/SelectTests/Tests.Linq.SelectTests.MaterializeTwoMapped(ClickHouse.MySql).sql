BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_mapping_column_2_prop

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS test_mapping_column_2_prop
(
	id          Int64,
	test_number Int64,

	PRIMARY KEY (id)
)
ENGINE = MergeTree()
ORDER BY id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO test_mapping_column_2_prop
(
	id,
	test_number
)
VALUES
(toInt64(1),toInt64(3))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.test_number,
	t1.test_number,
	t1.test_number,
	t1.id
FROM
	test_mapping_column_2_prop t1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS test_mapping_column_2_prop

