BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereWithBool

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithBool
(
	Id        Int32,
	BoolValue Bool,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WhereWithBool
(
	Id,
	BoolValue
)
VALUES
(
	1,
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t,
	WhereWithBool x
WHERE
	x.BoolValue AND x.Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereWithBool

