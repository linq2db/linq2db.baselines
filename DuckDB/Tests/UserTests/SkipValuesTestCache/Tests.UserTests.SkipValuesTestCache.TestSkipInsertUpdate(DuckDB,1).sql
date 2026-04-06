-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'

INSERT INTO PR_1598_Insert_Table_Cache
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
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	PR_1598_Insert_Table_Cache
SET
	Name = CAST($Name AS VARCHAR)
WHERE
	PR_1598_Insert_Table_Cache.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	PR_1598_Insert_Table_Cache t
WHERE
	t.Id = 1
LIMIT 1

