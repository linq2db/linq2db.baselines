-- SapHana.Odbc SapHanaOdbc
DECLARE @Pk Int -- Int32
SET     @Pk = 1
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "TaskWithStage"
(
	"Pk",
	"Id",
	"TargetName"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual TinyInt(1) -- Byte
SET     @Actual = 1

INSERT INTO "TaskStageRecord"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT DISTINCT
	"t"."Pk",
	"t"."Id",
	"t"."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"TaskWithStage" "t"
		LEFT JOIN "TaskStageRecord" "a_ActualStage" ON "t"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1

