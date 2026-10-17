-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	Trunc(r."Value", 'DD')
FROM
	"CoarseDateShapesRow" r
UNION ALL
SELECT
	r_1."Day"
FROM
	"CoarseDateShapesRow" r_1

-- Oracle.11.Managed Oracle11
SELECT
	CASE
		WHEN r."Id" > 0 THEN TRUNC(r."Value")
		ELSE Trunc(r."Value", 'DD')
	END
FROM
	"CoarseDateShapesRow" r

