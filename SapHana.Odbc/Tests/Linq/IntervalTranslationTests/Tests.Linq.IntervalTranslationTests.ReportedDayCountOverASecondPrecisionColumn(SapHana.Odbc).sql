-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-06-01 10:00:00.0000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-06-01 00:00:00.0000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-06-01 00:00:00.0000000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = TIMESTAMP '2026-05-25 10:00:00.0000000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = TIMESTAMP '2026-05-25 10:00:00.0000000'
DECLARE @OpenedOn Date
SET     @OpenedOn = TIMESTAMP '2026-05-25 00:00:00.0000000'
DECLARE @ClosedOn Date
SET     @ClosedOn = TIMESTAMP '2026-05-25 00:00:00.0000000'

INSERT INTO "CoarseEventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"OpenedOn",
	"ClosedOn"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST(Nano100_Between(MIN("grp"."StartedOn"), MAX("grp"."StartedOn")) AS Double) / 864000000000 AS Integer) + 1
FROM
	"CoarseEventRow" "grp"
LIMIT 2

