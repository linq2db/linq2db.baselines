-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StartedOn Datetime -- DateTime
SET     $StartedOn = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $FinishedOn Datetime -- DateTime
SET     $FinishedOn = NULL

INSERT INTO CoarseNullableEventRow
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
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StartedOn Datetime -- DateTime
SET     $StartedOn = Timestamp('2026-06-01T11:00:00.000000Z')
DECLARE $FinishedOn Datetime -- DateTime
SET     $FinishedOn = Timestamp('2026-06-01T13:00:00.000000Z')

INSERT INTO CoarseNullableEventRow
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
	COUNT(*) as Count_1
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) < Timestamp('2026-06-01T10:00:00.500000Z')

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	CoarseNullableEventRow r
WHERE
	Timestamp('2026-06-01T10:00:00.500000Z') > Coalesce(r.FinishedOn, r.StartedOn)

-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	CoarseNullableEventRow r
WHERE
	Coalesce(r.FinishedOn, r.StartedOn) = Timestamp('2026-06-01T10:00:00.500000Z')

