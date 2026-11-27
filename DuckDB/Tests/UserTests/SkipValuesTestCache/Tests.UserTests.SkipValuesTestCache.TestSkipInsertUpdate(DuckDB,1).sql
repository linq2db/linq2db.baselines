-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'

INSERT INTO SkipOnInsertCache
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
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'John'
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnInsertCache
SET
	Name = $Name
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

