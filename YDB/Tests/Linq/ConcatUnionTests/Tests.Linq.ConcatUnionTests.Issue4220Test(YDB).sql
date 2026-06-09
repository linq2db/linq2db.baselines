-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $AOnly Text(6) -- String
SET     $AOnly = 'a only'u

INSERT INTO ConcreteA
(
	Id,
	AOnly
)
VALUES
(
	$Id,
	$AOnly
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $BOnly Text(6) -- String
SET     $BOnly = 'b only'u

INSERT INTO ConcreteB
(
	Id,
	BOnly
)
VALUES
(
	$Id,
	$BOnly
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.AOnly as AOnly,
	CAST(NULL AS Int32) as Id_1,
	CAST(NULL AS Text) as BOnly
FROM
	ConcreteA e
UNION ALL
SELECT
	CAST(NULL AS Int32) as Id,
	CAST(NULL AS Text) as AOnly,
	e_1.Id as Id_1,
	e_1.BOnly as BOnly
FROM
	ConcreteB e_1

