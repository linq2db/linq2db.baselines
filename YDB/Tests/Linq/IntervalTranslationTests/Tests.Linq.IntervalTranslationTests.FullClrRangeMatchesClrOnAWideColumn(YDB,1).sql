-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Timestamp64 -- Object
SET     $StartedOn = Timestamp('0001-01-01T00:00:00.000000Z')
DECLARE $FinishedOn Timestamp64 -- Object
SET     $FinishedOn = Timestamp('9999-12-31T23:59:59.000000Z')

INSERT INTO WideEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	$Id,
	$StartedOn,
	$FinishedOn
)

-- YDB Ydb
SELECT
	Unwrap(CAST(r.FinishedOn - r.StartedOn AS Int64)) * 10l as c1
FROM
	WideEventRow r
LIMIT 2

