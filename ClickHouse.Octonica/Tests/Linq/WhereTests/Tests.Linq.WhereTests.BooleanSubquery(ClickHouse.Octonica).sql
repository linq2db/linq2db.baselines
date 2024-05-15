BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereWithBool

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WhereWithBool
(
	Id        Int32,
	BoolValue Bool,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereWithBool
(
	Id,
	BoolValue
)
VALUES
(1,true)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t,
	WhereWithBool x
WHERE
	x.BoolValue = true AND x.Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereWithBool

