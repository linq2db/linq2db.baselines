-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."FinishedOn",
	r."StartedOn",
	EXTRACT(HOUR FROM r."FinishedOn") as "Hour_1"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

