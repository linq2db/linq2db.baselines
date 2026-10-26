-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = NULL
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0000000'

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:"Id",
	:"StartedOn",
	:"FinishedOn"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = NULL

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:"Id",
	:"StartedOn",
	:"FinishedOn"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StartedOn TimeStamp -- DateTime2
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn TimeStamp -- DateTime2
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0000000'

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:"Id",
	:"StartedOn",
	:"FinishedOn"
)

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	CASE
		WHEN "r"."StartedOn" IS NULL THEN NULL
		ELSE "r"."FinishedOn"
	END,
	CASE
		WHEN "r"."FinishedOn" IS NULL THEN NULL
		ELSE "r"."StartedOn"
	END
FROM
	"OptionalEventRow" "r"
ORDER BY
	"r"."Id"

