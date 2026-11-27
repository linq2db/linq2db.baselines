-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar -- String
SET     $Name = NULL
DECLARE $Age INTEGER -- Int32
SET     $Age = 2

INSERT INTO SkipOnUpdateFluent
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
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(6) -- String
SET     $Name = 'Franki'
DECLARE $Age INTEGER -- Int32
SET     $Age = 18
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateFluent
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateFluent.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jack'
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateFluent
SET
	Name = $Name
WHERE
	SkipOnUpdateFluent.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1
LIMIT 1

