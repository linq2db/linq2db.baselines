-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Type Int32
SET     $Type = 1
DECLARE $Stored Text(4) -- String
SET     $Stored = 'John'u

INSERT INTO CalcSubtypeDual
(
	Id,
	`Type`,
	Stored
)
VALUES
(
	$Id,
	$Type,
	$Stored
)

-- YDB Ydb
SELECT
	t1.`Type` as Type_1,
	t1.Id as Id,
	t1.Stored as Stored,
	Coalesce(t1.Stored, ''u) || '!'u as Computed
FROM
	CalcSubtypeDual t1
LIMIT 2

