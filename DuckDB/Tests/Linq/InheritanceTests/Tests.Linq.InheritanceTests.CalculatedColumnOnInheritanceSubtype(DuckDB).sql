-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Type  -- Int32
SET     $Type = 1
DECLARE $Name_First NVarChar(4) -- String
SET     $Name_First = 'John'
DECLARE $Name_Second NVarChar(3) -- String
SET     $Name_Second = 'Doe'

INSERT INTO CalcSubtypeTable
(
	Id,
	"Type",
	Name_First,
	Name_Second
)
VALUES
(
	$Id,
	$Type,
	$Name_First,
	$Name_Second
)

-- DuckDB

SELECT
	t1.Id,
	t1."Type",
	t1.Name_First,
	t1.Name_Second,
	Coalesce(t1.Name_First, '') || ' ' || Coalesce(t1.Name_Second, '')
FROM
	CalcSubtypeTable t1
LIMIT 2

