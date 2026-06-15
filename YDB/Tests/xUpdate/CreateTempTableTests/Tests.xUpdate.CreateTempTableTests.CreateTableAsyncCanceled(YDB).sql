-- YDB Ydb

DROP TABLE IF EXISTS TempTable

-- YDB Ydb

SELECT
	p.ParentID as ParentID
FROM
	Parent p

-- YDB Ydb

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)

-- YDB Ydb

DROP TABLE TempTable

