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
	(
		SELECT
			FIRST_VALUE(r.StartedOn) OVER (ORDER BY r.Id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as First_1
		FROM
			CoarseNullableEventRow r
	) t1
WHERE
	t1.First_1 < Timestamp('2026-06-01T10:00:00.500000Z')

