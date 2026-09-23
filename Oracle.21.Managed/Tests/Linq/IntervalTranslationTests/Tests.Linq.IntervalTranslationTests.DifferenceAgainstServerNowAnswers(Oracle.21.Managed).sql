-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2025-06-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2025-06-01 10:00:00.000000'

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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"EventRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (CURRENT_TIMESTAMP - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CURRENT_TIMESTAMP - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CURRENT_TIMESTAMP - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CURRENT_TIMESTAMP - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 1D

