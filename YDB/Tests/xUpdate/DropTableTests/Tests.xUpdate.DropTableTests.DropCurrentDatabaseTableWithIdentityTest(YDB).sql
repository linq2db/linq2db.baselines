-- YDB Ydb

DROP TABLE IF EXISTS DropTableTestID

-- YDB Ydb

CREATE TABLE DropTableTestID
(
	ID  SERIAL,
	ID1 Int32   NOT NULL,

	PRIMARY KEY (ID)
)

-- YDB Ydb

INSERT INTO DropTableTestID
(
	ID1
)
VALUES
(
	2
)

-- YDB Ydb

SELECT
	t.ID as ID,
	t.ID1 as ID1
FROM
	DropTableTestID t

-- YDB Ydb

DROP TABLE DropTableTestID

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.ID1 as ID1
FROM
	DropTableTestID t1

