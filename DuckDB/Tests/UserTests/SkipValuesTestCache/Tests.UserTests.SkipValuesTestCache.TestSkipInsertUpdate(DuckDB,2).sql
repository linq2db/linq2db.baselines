-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $Age INTEGER -- Int32
SET     $Age = 2

INSERT INTO SkipOnInsertCache
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
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $Age INTEGER -- Int32
SET     $Age = 2
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnInsertCache
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnInsertCache.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

