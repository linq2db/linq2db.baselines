-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = NULL
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0000000'

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = NULL

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.0000000'

INSERT INTO "OptionalEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
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

