-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = 5
DECLARE $Value Text(7) -- String
SET     $Value = 'initial'u

INSERT INTO ConcurrencyRefreshAutoInc
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
DECLARE $Value Text(7) -- String
SET     $Value = 'updated'u
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Stamp Int32
SET     $Stamp = 5

UPDATE
	ConcurrencyRefreshAutoInc
SET
	Stamp = ConcurrencyRefreshAutoInc.Stamp + 1,
	`Value` = $Value
WHERE
	ConcurrencyRefreshAutoInc.Id = $Id AND ConcurrencyRefreshAutoInc.Stamp = $Stamp
RETURNING
	Stamp

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Stamp as Stamp,
	t1.`Value` as Value_1
FROM
	ConcurrencyRefreshAutoInc t1
LIMIT 2

