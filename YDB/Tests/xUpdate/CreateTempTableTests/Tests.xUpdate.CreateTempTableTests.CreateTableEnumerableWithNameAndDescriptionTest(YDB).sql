-- YDB Ydb

DROP TABLE IF EXISTS TempTable

-- YDB Ydb

CREATE TABLE TempTable
(
	Name Text,

	PRIMARY KEY (Name)
)

INSERT ASYNC BULK TempTable(Name)

-- YDB Ydb

SELECT
	t.Name as Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- YDB Ydb

DROP TABLE IF EXISTS TempTable

