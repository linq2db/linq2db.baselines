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
	toInt32(1),
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereWithBool

