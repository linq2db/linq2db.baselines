-- DuckDB

CREATE TEMPORARY TABLE MergeTemp
(
	ID   INTEGER,
	Name VARCHAR,

	PRIMARY KEY (ID)
)

-- DuckDB
DECLARE $tableName NVarChar(9) -- String
SET     $tableName = 'MergeTemp'

SELECT
	c_1."column_name"
FROM
	information_schema."columns" c_1
WHERE
	c_1."table_name" = $tableName
ORDER BY
	c_1.ordinal_position

INSERT BULK MergeTemp(ID, Name)

-- DuckDB

INSERT INTO MergeTemp AS t1
(
	ID,
	Name
)
VALUES
(
	(
		SELECT
			t.ID
		FROM
			MergeTemp t
		WHERE
			t.Name = 'John'
	),
	'John II'
)
ON CONFLICT (ID) DO UPDATE SET
	ID = t1.ID,
	Name = t1.Name

-- DuckDB

DROP TABLE IF EXISTS MergeTemp

