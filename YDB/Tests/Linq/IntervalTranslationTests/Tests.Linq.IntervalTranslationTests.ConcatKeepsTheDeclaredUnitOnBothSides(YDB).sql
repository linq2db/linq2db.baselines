-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $InSeconds Int64
SET     $InSeconds = 5400l
DECLARE $InTicks Int64
SET     $InTicks = 54000000000l
DECLARE $Undeclared Int64
SET     $Undeclared = 54000000000l
DECLARE $UndeclaredSeconds Int64
SET     $UndeclaredSeconds = 5400l

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	$Id,
	$InSeconds,
	$InTicks,
	$Undeclared,
	$UndeclaredSeconds
)

-- YDB Ydb
SELECT
	t1.Source as Source,
	t1.Duration as Duration,
	t1.Duration_1 as Duration_1
FROM
	(
		SELECT
			Unwrap(CAST(1 AS Int32)) as Source,
			r.InSeconds as Duration,
			CAST(NULL AS Int64) as Duration_1
		FROM
			DurationRow r
		UNION ALL
		SELECT
			Unwrap(CAST(2 AS Int32)) as Source,
			CAST(NULL AS Int64) as Duration,
			r_1.InTicks as Duration_1
		FROM
			DurationRow r_1
	) t1
ORDER BY
	t1.Source

