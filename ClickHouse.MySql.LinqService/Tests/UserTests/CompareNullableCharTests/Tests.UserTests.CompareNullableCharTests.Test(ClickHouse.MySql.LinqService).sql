BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Table1
(
	Field1 Int32,
	Foeld2 Nullable(FixedString(1)),

	PRIMARY KEY (Field1)
)
ENGINE = MergeTree()
ORDER BY Field1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	current_1.Field1,
	previous.Field1
FROM
	Table1 current_1,
	Table1 previous
WHERE
	current_1.Foeld2 = previous.Foeld2 OR current_1.Foeld2 IS NULL AND previous.Foeld2 IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Table1

