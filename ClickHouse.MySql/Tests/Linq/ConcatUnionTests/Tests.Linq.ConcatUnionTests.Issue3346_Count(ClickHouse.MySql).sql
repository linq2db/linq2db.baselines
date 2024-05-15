BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ComplexPerson

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ComplexPerson
(
	Id        Int32,
	FirstName Nullable(String),
	LastName  Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			x.Id as Id,
			x.FirstName as FirstName,
			x.LastName as LastName
		FROM
			ComplexPerson x
		WHERE
			x.Id < 10
		UNION DISTINCT
		SELECT
			x_1.Id as Id,
			x_1.FirstName as FirstName,
			x_1.LastName as LastName
		FROM
			ComplexPerson x_1
		WHERE
			x_1.Id < 20
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ComplexPerson

