-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value TimeStamp -- DateTime
SET     @Value = TIMESTAMP '2026-06-01 10:00:00.000000'
DECLARE @Day Date
SET     @Day = TIMESTAMP '2026-06-01 00:00:00.000000'
DECLARE @Wide TimeStamp -- DateTime
SET     @Wide = TIMESTAMP '2026-06-01 10:00:00.000000'

INSERT INTO "CoarseDateShapesRow"
(
	"Id",
	"Value",
	"Day",
	"Wide"
)
VALUES
(
	:Id,
	:Value,
	:Day,
	:Wide
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Value") as "In_1"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
	) t1
WHERE
	t1."In_1" IN (TIMESTAMP '2026-06-01 10:00:00.500000')

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1."Value") as "Max_1"
		FROM
			"CoarseDateShapesRow" g_1
		GROUP BY
			g_1."Id"
	) t1
WHERE
	t1."Max_1" IN (TIMESTAMP '2026-06-01 10:00:00.500000')

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN TIMESTAMP '2026-06-01 10:00:00.500000' IN (
			SELECT
				MAX(g_1."Value")
			FROM
				"CoarseDateShapesRow" g_1
			GROUP BY
				g_1."Id"
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

