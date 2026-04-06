-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $Age  -- Int32
SET     $Age = 15

INSERT INTO PR_1598_SkipCustom_Table
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
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(3) -- String
SET     $Name = 'Max'

INSERT INTO PR_1598_SkipCustom_Table
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
	PR_1598_SkipCustom_Table t
WHERE
	t.Id = 2
LIMIT 1

