BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Entity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Entity
(
	Str Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Str
FROM
	Entity t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Entity

