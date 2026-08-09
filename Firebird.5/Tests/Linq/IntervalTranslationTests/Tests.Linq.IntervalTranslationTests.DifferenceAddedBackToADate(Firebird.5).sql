-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Firebird.5 Firebird4
SELECT
	"r"."FinishedOn",
	"r"."StartedOn",
	Extract(hour from "r"."FinishedOn")
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

