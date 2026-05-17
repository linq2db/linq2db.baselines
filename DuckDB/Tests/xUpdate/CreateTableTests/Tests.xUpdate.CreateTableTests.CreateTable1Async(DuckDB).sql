-- DuckDB

DROP TABLE IF EXISTS TestTable;
DROP SEQUENCE IF EXISTS TestTable_ID_seq;
DROP SEQUENCE IF EXISTS TestTable_ID_seq_reset;

-- DuckDB

CREATE SEQUENCE IF NOT EXISTS TestTable_ID_seq START 1;
CREATE TABLE TestTable
(
	ID        INTEGER DEFAULT NEXTVAL('"TestTable_ID_seq"'),
	Field1    VARCHAR,
	Field2    VARCHAR,
	CreatedOn TIMESTAMP,

	PRIMARY KEY (ID)
)

-- DuckDB

SELECT
	t1.ID,
	t1.Field1,
	t1.Field2,
	t1.CreatedOn
FROM
	TestTable t1

-- DuckDB

DROP TABLE TestTable;
DROP SEQUENCE IF EXISTS TestTable_ID_seq;
DROP SEQUENCE IF EXISTS TestTable_ID_seq_reset;

