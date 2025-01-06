BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereWithBool

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithBool
(
	Id        Int32,
	BoolValue Bool,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO WhereWithBool
(
	Id,
	BoolValue
)
VALUES
(1,true)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t,
	WhereWithBool x
WHERE
	x.BoolValue AND x.Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereWithBool

