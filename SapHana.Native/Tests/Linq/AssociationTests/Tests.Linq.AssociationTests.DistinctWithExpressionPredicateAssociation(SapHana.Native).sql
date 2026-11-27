-- SapHana.Native SapHana
DECLARE @Pk Integer -- Int32
SET     @Pk = 1
DECLARE @Id Integer -- Int32
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
	:"Pk",
	:"Id",
	:"TargetName"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual TinyInt -- Byte
SET     @Actual = 1

INSERT INTO "TaskStageRecord"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	:"Id",
	:"TaskId",
	:"Actual"
)

-- SapHana.Native SapHana
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

