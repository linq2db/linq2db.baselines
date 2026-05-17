-- DuckDB

CREATE TABLE temp_table_1
(
	ID      INTEGER,
	"Value" VARCHAR,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $tableName NVarChar(12) -- String
SET     $tableName = 'temp_table_1'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK temp_table_1(ID, Value)

-- DuckDB

CREATE TABLE temp_table_2
(
	"Value" VARCHAR,

	PRIMARY KEY ("Value")
)

-- DuckDB

INSERT INTO temp_table_2
(
	"Value"
)
SELECT
	t1.Value_1
FROM
	temp_table_1 gr
		INNER JOIN LATERAL (
			SELECT
				c_1."Value" as Value_1
			FROM
				temp_table_1 c_1
			WHERE
				gr.ID = c_1.ID
			LIMIT 1
		) t1 ON 1=1

-- DuckDB

DROP TABLE IF EXISTS temp_table_2

-- DuckDB

DROP TABLE IF EXISTS temp_table_1

