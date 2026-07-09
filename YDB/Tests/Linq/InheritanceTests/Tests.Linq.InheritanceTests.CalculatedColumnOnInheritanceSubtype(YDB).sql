-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Type Int32
SET     $Type = 1
DECLARE $Name_First Text(4) -- String
SET     $Name_First = 'John'u
DECLARE $Name_Second Text(3) -- String
SET     $Name_Second = 'Doe'u

INSERT INTO CalcSubtypeTable
(
	Id,
	`Type`,
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

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Type` as Type_1,
	t1.Name_First as Name_First,
	t1.Name_Second as Name_Second,
	Coalesce(t1.Name_First, ''u) || ' 'u || Coalesce(t1.Name_Second, ''u) as FullName
FROM
	CalcSubtypeTable t1
LIMIT 2

