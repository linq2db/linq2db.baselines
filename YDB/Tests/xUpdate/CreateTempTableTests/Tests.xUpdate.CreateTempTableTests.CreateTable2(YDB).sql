-- YDB Ydb

DROP TABLE IF EXISTS TempTable

-- YDB Ydb

CREATE TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)

-- YDB Ydb

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID as ID
FROM
	Parent p

-- YDB Ydb

SELECT
	t.ID as ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- YDB Ydb

DROP TABLE IF EXISTS TempTable

