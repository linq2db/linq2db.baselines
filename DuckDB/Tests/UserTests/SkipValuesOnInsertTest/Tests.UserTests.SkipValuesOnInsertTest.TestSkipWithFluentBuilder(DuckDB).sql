-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name  -- Object
SET     $Name = NULL

INSERT INTO PR_1598_Insert_Fluent_Table
(
	Id,
	Name
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR)
)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Fluent_Table t
WHERE
	t.Id = 1
LIMIT 1

