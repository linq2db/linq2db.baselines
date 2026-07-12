-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'a'
DECLARE $Age  -- Int32
SET     $Age = 5

INSERT INTO OptRow
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
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name NVarChar -- String
SET     $Name = NULL
DECLARE $Age  -- Int32
SET     $Age = NULL

INSERT INTO OptRow
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
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'b'
DECLARE $Age  -- Int32
SET     $Age = 7

INSERT INTO OptRow
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
	x.Id,
	x.Name,
	x.Age
FROM
	OptRow x
WHERE
	x.Name IS NULL

