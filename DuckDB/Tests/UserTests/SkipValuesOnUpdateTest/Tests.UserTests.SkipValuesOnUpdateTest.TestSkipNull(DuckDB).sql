-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'Tommy'
DECLARE $Age  -- Object
SET     $Age = NULL

INSERT INTO PR_1598_Update_Null_Table
(
	Id,
	Name,
	Age
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($Age AS INTEGER)
)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jack'
DECLARE $Age  -- Int32
SET     $Age = 2
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Null_Table
SET
	Name = CAST($Name AS VARCHAR),
	Age = CAST($Age AS INTEGER)
WHERE
	PR_1598_Update_Null_Table.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'Franki'
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Null_Table
SET
	Name = CAST($Name AS VARCHAR)
WHERE
	PR_1598_Update_Null_Table.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Null_Table t
WHERE
	t.Id = 1
LIMIT 1

