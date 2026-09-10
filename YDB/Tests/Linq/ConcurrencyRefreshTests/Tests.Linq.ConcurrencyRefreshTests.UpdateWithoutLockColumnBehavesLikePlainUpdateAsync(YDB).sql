-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = 5
DECLARE $Value Text(7) -- String
SET     $Value = 'initial'u

INSERT INTO ConcurrencyRefreshNoLock
(
	Id,
	Stamp,
	`Value`
)
VALUES
(
	$Id,
	$Stamp,
	$Value
)

-- YDB Ydb
DECLARE $Stamp Int32
SET     $Stamp = 5
DECLARE $Value Text(7) -- String
SET     $Value = 'updated'u
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	ConcurrencyRefreshNoLock
SET
	Stamp = $Stamp,
	`Value` = $Value
WHERE
	ConcurrencyRefreshNoLock.Id = $Id

-- YDB Ydb
SELECT
	r.Id as Id,
	r.Stamp as Stamp,
	r.`Value` as Value_1
FROM
	ConcurrencyRefreshNoLock r
WHERE
	r.Id = 1
LIMIT 2

