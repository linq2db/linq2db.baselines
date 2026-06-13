-- YDB Ydb

DROP TABLE IF EXISTS DropTableTest

-- YDB Ydb

CREATE TABLE DropTableTest
(
	ID Int32,

	PRIMARY KEY (ID)
)

-- YDB Ydb

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

-- YDB Ydb

SELECT
	t1.ID as ID
FROM
	DropTableTest t1

-- YDB Ydb

DROP TABLE DropTableTest

-- YDB Ydb

SELECT
	t1.ID as ID
FROM
	DropTableTest t1

