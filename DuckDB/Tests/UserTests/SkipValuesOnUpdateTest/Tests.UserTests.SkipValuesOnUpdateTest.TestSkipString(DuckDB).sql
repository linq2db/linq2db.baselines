-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'Manuel'
DECLARE $Age  -- Int32
SET     $Age = 14

INSERT INTO PR_1598_Update_Table
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
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'Jacob'
DECLARE $Age  -- Int32
SET     $Age = 15
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Table
SET
	Name = CAST($Name AS VARCHAR),
	Age = CAST($Age AS INTEGER)
WHERE
	PR_1598_Update_Table.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Age  -- Int32
SET     $Age = 22
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	PR_1598_Update_Table
SET
	Age = CAST($Age AS INTEGER)
WHERE
	PR_1598_Update_Table.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Update_Table t
WHERE
	t.Id = 1
LIMIT 1

