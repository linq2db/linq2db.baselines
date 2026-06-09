-- YDB Ydb

DROP TABLE IF EXISTS TempTable

-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p

-- YDB Ydb

CREATE TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)

INSERT ASYNC BULK TempTable(ID)

-- YDB Ydb

SELECT
	t.ID as ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- YDB Ydb

DROP TABLE IF EXISTS TempTable

