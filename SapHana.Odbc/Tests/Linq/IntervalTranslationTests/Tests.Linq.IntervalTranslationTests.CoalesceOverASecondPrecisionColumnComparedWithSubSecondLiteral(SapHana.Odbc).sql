-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = NULL

INSERT INTO "CoarseNullableEventRow"
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
SET     @StartedOn = TIMESTAMP '2026-06-01 11:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 13:00:00.0000000'

INSERT INTO "CoarseNullableEventRow"
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
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") < TIMESTAMP '2026-06-01 10:00:00.5000000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	TIMESTAMP '2026-06-01 10:00:00.5000000' > Coalesce("r"."FinishedOn", "r"."StartedOn")

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"CoarseNullableEventRow" "r"
WHERE
	Coalesce("r"."FinishedOn", "r"."StartedOn") = TIMESTAMP '2026-06-01 10:00:00.5000000'

