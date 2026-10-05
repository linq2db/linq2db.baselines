-- Oracle.18.Managed Oracle.Managed Oracle12
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

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	Trunc(r."Value", 'DD') = TIMESTAMP '2026-06-01 00:00:00.000000'

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	Trunc(r."Value", 'DD') < TIMESTAMP '2026-06-01 00:00:00.000000'

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDateShapesRow" r
WHERE
	TIMESTAMP '2026-06-01 00:00:00.000000' = Trunc(r."Value", 'DD')

