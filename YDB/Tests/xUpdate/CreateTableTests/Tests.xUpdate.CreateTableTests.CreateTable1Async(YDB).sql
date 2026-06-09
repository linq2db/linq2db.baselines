-- YDB Ydb

DROP TABLE IF EXISTS TestTable

-- YDB Ydb

CREATE TABLE TestTable
(
	ID        SERIAL,
	Field1    Text,
	Field2    Text,
	CreatedOn Timestamp,

	PRIMARY KEY (ID)
)

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Field1 as Field1,
	t1.Field2 as Field2,
	t1.CreatedOn as CreatedOn
FROM
	TestTable t1

-- YDB Ydb

DROP TABLE TestTable

