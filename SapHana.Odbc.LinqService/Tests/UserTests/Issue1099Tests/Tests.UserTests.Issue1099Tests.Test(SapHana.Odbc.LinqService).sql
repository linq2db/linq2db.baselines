BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BackgroundTask"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "BackgroundTask"
(
	"ID"               Integer     NULL,
	"DurationID"       Integer NOT NULL,
	"DurationInterval" Integer NOT NULL,
	"PersonID"         Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @DurationID  -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval  -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID  -- Int32
SET     @PersonID = 1

INSERT INTO "BackgroundTask"
(
	"ID",
	"DurationID",
	"DurationInterval",
	"PersonID"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @personId  -- Int32
SET     @personId = 1

SELECT
	"task_1"."ID",
	"task_1"."DurationID",
	"task_1"."DurationInterval",
	"task_1"."PersonID"
FROM
	"BackgroundTask" "task_1"
WHERE
	"task_1"."PersonID" = ? AND "task_1"."PersonID" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "BackgroundTask"

