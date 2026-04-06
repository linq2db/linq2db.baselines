-- DuckDB

DROP TABLE IF EXISTS TestTable

-- DuckDB

CREATE TEMPORARY TABLE TestTable
(
	Id      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (Id)
)

-- DuckDB

SELECT
	t1.Id,
	t1."Value",
	t2.Id,
	t2."Value",
	t3.Id,
	t3."Value"
FROM
	TestTable t1
		CROSS JOIN TestTable t2
		INNER JOIN TestTable t3 ON t2.Id = t3.Id
WHERE
	t1.Id = t2.Id

-- DuckDB

DROP TABLE IF EXISTS TestTable

