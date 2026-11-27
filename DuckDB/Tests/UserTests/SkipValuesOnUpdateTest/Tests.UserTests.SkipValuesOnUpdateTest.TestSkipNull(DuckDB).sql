-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'Tommy'
DECLARE $Age INTEGER -- Int32
SET     $Age = NULL

INSERT INTO SkipOnUpdateNulls
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
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jack'
DECLARE $Age INTEGER -- Int32
SET     $Age = 2
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateNulls
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateNulls.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'Franki'
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateNulls
SET
	Name = $Name
WHERE
	SkipOnUpdateNulls.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

