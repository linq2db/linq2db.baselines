-- DuckDB

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	ID      INTEGER,
	"Value" INTEGER NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'temp_table1'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK temp_table1(ID, Value)

-- DuckDB

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
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
	$ID,
	$Value
)

-- DuckDB
DECLARE $tableName NVarChar(11) -- String
SET     $tableName = 'temp_table1'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK temp_table1(ID, Value)

-- DuckDB

TRUNCATE TABLE temp_table1;

-- DuckDB

TRUNCATE TABLE temp_table2;

-- DuckDB

DROP TABLE IF EXISTS temp_table2

-- DuckDB

DROP TABLE IF EXISTS temp_table1

