-- DuckDB

DROP TABLE IF EXISTS DropTableTestID;
DROP SEQUENCE IF EXISTS DropTableTestID_ID_seq;
DROP SEQUENCE IF EXISTS DropTableTestID_ID_seq_reset;

-- DuckDB

CREATE SEQUENCE IF NOT EXISTS DropTableTestID_ID_seq START 1;
CREATE TABLE DropTableTestID
(
	ID  INTEGER DEFAULT NEXTVAL('"DropTableTestID_ID_seq"'),
	ID1 INTEGER                                              NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO DropTableTestID
(
	ID1
)
VALUES
(
	2
)

-- DuckDB

SELECT
	t.ID,
	t.ID1
FROM
	DropTableTestID t

-- DuckDB

DROP TABLE DropTableTestID;
DROP SEQUENCE IF EXISTS DropTableTestID_ID_seq;
DROP SEQUENCE IF EXISTS DropTableTestID_ID_seq_reset;

-- DuckDB

SELECT
	t1.ID,
	t1.ID1
FROM
	DropTableTestID t1

