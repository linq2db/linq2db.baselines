-- Firebird.4 Firebird4
DECLARE @Pk Integer -- Int32
SET     @Pk = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "TaskWithStage"
(
	"Pk",
	"Id",
	"TargetName"
)
VALUES
(
	@Pk,
	@Id,
	@TargetName
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = TRUE

INSERT INTO "TaskStageRecord"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

-- Firebird.4 Firebird4
SELECT DISTINCT
	"t"."Pk",
	"t"."Id",
	"t"."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"TaskWithStage" "t"
		LEFT JOIN "TaskStageRecord" "a_ActualStage" ON "t"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = TRUE

