-- DuckDB
DECLARE $tableName NVarChar(13) -- String
SET     $tableName = 'DateOnlyTable'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

-- DuckDB

INSERT INTO DateOnlyTable
(
	"Date"
)
VALUES
('2021-01-01'::DATE)

-- DuckDB

SELECT
	t1.Id,
	t1."Date"
FROM
	DateOnlyTable t1
LIMIT 2

