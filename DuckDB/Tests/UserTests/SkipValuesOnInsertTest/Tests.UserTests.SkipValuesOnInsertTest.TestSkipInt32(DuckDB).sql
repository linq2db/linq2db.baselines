-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'Smith'

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'Tommy'

INSERT INTO SkipOnInsertTable
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
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

