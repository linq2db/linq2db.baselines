-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Key Int32
SET     $Key = 10

INSERT INTO DuRow
(
	Id,
	`Key`
)
VALUES
(
	$Id,
	$Key
)

-- YDB Ydb
DECLARE $Oid Int32
SET     $Oid = 1
DECLARE $RefId Int32
SET     $RefId = 1

INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	$Oid,
	$RefId
)

-- YDB Ydb
DECLARE $Oid Int32
SET     $Oid = 2
DECLARE $RefId Int32
SET     $RefId = 99

INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	$Oid,
	$RefId
)

-- YDB Ydb
SELECT
	arg2.`Key` as Key_1
FROM
	DuOuter tupledArg
		LEFT JOIN DuRow arg2 ON tupledArg.RefId = arg2.Id
ORDER BY
	tupledArg.Oid

