-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Datetime -- DateTime
SET     $Value = Timestamp('2026-06-01T10:00:00.000000Z')
DECLARE $Day Date
SET     $Day = Timestamp('2026-06-01T00:00:00.000000Z')
DECLARE $Wide Timestamp -- DateTime2
SET     $Wide = Timestamp('2026-06-01T10:00:00.000000Z')

INSERT INTO CoarseDateShapesRow
(
	Id,
	`Value`,
	`Day`,
	Wide
)
VALUES
(
	$Id,
	$Value,
	$Day,
	$Wide
)

-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T10:00:00.500000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Value`) as In_1
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.In_1 IN ($Ids0_1)

-- YDB Ydb
DECLARE $Ids0_1 Timestamp -- DateTime2
SET     $Ids0_1 = Timestamp('2026-06-01T10:00:00.500000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			MAX(g_1.`Value`) as Max_1
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	t1.Max_1 IN ($Ids0_1)

-- YDB Ydb
$CTE_1 = 	SELECT
		MAX(g_1.`Value`) as Max_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
;

SELECT
	CASE
		WHEN Timestamp('2026-06-01T10:00:00.500000Z') IN (
			SELECT
				t1.Max_1
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

