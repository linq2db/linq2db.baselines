BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Entity

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Entity
(
	Str Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Str
FROM
	Entity t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Entity

