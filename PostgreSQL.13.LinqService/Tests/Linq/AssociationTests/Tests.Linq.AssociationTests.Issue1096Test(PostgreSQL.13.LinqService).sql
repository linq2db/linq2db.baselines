BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Pk Integer -- Int32
SET     @Pk = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

INSERT INTO "Issue1096TaskStage"
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT DISTINCT
	t."Pk",
	t."Id",
	t."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"Issue1096Task" t
		LEFT JOIN "Issue1096TaskStage" "a_ActualStage" ON t."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True

