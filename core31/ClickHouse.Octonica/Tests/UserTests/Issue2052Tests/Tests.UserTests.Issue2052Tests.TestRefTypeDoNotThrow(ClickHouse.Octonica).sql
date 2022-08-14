BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Entity

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Entity
(
	Str Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Str
FROM
	Entity t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Entity

