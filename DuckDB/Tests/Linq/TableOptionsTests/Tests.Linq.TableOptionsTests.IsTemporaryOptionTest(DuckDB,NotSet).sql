-- DuckDB

CREATE TEMPORARY TABLE temp_table1
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

INSERT BULK temp_table1(ID, Value)

-- DuckDB

CREATE TEMPORARY TABLE temp_table2
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO temp_table2
(
	ID,
	"Value"
)
SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table1 t1

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table1 t1

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	temp_table2 t1

-- DuckDB

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(2,3)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 3
DECLARE $Value  -- Int32
SET     $Value = 3

INSERT INTO temp_table1
(
	ID,
	"Value"
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Value AS INTEGER)
)

INSERT BULK temp_table1(ID, Value)

-- DuckDB

TRUNCATE TABLE temp_table1;

-- DuckDB

TRUNCATE TABLE temp_table2;

-- DuckDB

DROP TABLE IF EXISTS temp_table2

-- DuckDB

DROP TABLE IF EXISTS temp_table1

