-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(3) -- String
SET     $Name = 'Max'
DECLARE $Age INTEGER -- Int32
SET     $Age = 20
DECLARE $Gender NVarChar(6) -- String
SET     $Gender = 'Female'

INSERT INTO SkipOnUpdateEnum
(
	Id,
	Name,
	Age,
	Gender
)
VALUES
(
	$Id,
	$Name,
	$Age,
	$Gender
)

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jack'
DECLARE $Age INTEGER -- Int32
SET     $Age = 2
DECLARE $Gender NVarChar(4) -- String
SET     $Gender = 'Male'
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateEnum
SET
	Name = $Name,
	Age = $Age,
	Gender = $Gender
WHERE
	SkipOnUpdateEnum.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

-- DuckDB
DECLARE $Name NVarChar(8) -- String
SET     $Name = 'Francine'
DECLARE $Age INTEGER -- Int32
SET     $Age = 20
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	SkipOnUpdateEnum
SET
	Name = $Name,
	Age = $Age
WHERE
	SkipOnUpdateEnum.Id = $Id

-- DuckDB
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

