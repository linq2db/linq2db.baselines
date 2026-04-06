-- DuckDB

CREATE TEMPORARY TABLE tmptbl1
(
	ID      INTEGER,
	"Value" VARCHAR,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl1(ID, Value)

-- DuckDB

CREATE TEMPORARY TABLE tmptbl2
(
	ID      INTEGER,
	"Value" VARCHAR NOT NULL,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl2(ID, Value)

-- DuckDB

CREATE TEMPORARY TABLE tmptbl3
(
	ID      INTEGER,
	"Value" VARCHAR,

	PRIMARY KEY (ID)
)

INSERT BULK tmptbl3(ID, Value)

-- DuckDB

SELECT
	t4.ID,
	t4."Value"
FROM
	tmptbl1 t2
		LEFT JOIN tmptbl2 t3 ON t2.ID = t3.ID
		LEFT JOIN tmptbl3 t4 ON Coalesce(t3."Value", t2."Value") = t4."Value" OR t3."Value" IS NULL AND t2."Value" IS NULL AND t4."Value" IS NULL

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl1 t1

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl2 t1

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	tmptbl3 t1

-- DuckDB

DROP TABLE IF EXISTS tmptbl3

-- DuckDB

DROP TABLE IF EXISTS tmptbl2

-- DuckDB

DROP TABLE IF EXISTS tmptbl1

