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
	$Id,
	$Name,
	$Age
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
	$Id,
	$Name
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

