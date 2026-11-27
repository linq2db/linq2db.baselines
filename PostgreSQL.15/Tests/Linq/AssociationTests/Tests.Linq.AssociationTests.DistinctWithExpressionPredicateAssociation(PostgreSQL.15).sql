-- PostgreSQL.15 PostgreSQL12
DECLARE @Pk Integer -- Int32
SET     @Pk = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "TaskWithStage"
(
	"Pk",
	"Id",
	"TargetName"
)
VALUES
(
	:Pk,
	:Id,
	:TargetName
)

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

INSERT INTO "TaskStageRecord"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	:Id,
	:TaskId,
	:Actual
)

-- PostgreSQL.15 PostgreSQL12
SELECT DISTINCT
	t."Pk",
	t."Id",
	t."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"TaskWithStage" t
		LEFT JOIN "TaskStageRecord" "a_ActualStage" ON t."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True

