BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SomeTable
(
	ClassProp Bool,
	Interface Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SomeTable
(
	ClassProp,
	Interface
)
VALUES
(
	true,
	false
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ClassProp,
	t1.Interface
FROM
	SomeTable t1
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SomeTable

