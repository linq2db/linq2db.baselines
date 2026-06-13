-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 0
DECLARE $IntVal Int32
SET     $IntVal = 42
DECLARE $DecVal Decimal(3, 2)
SET     $DecVal = Decimal('3.14', 22, 9)
DECLARE $StrVal Text(5) -- String
SET     $StrVal = 'hello'u
DECLARE $BoolVal Bool -- Boolean
SET     $BoolVal = true
DECLARE $DtVal Timestamp -- DateTime2
SET     $DtVal = Timestamp('2020-02-29T17:54:55.123123Z')

INSERT INTO SimpleEntity
(
	Id,
	IntVal,
	DecVal,
	StrVal,
	BoolVal,
	DtVal
)
VALUES
(
	$Id,
	$IntVal,
	$DecVal,
	$StrVal,
	$BoolVal,
	$DtVal
)

-- YDB Ydb

SELECT
	e.Id as Id,
	e.IntVal as IntVal,
	e.DecVal as DecVal,
	e.StrVal as StrVal,
	e.BoolVal as BoolVal,
	e.DtVal as DtVal
FROM
	SimpleEntity e
WHERE
	e.IntVal = 42
LIMIT 2

