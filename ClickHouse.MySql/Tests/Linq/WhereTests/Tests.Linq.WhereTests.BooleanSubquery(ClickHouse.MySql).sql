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
(toInt32(1),true)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t
WHERE
	(
		SELECT
			x.BoolValue
		FROM
			WhereWithBool x
		WHERE
			x.Id = toInt32(1)
	) = true

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereWithBool

