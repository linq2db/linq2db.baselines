-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	MAX(g_1."Day")
FROM
	"CoarseDateShapesRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.000000' AS timestamp)
FROM
	"CoarseDateShapesRow" r

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	MAX(g_1."Value")
FROM
	"CoarseDateShapesRow" g_1
GROUP BY
	g_1."Id"
UNION ALL
SELECT
	CAST(TIMESTAMP '2026-06-01 10:00:00.500000' AS timestamp)
FROM
	"CoarseDateShapesRow" r

