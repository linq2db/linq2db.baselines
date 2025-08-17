BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	:Id,
	:TargetName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TargetName Text(4) -- String
SET     @TargetName = 'None'

INSERT INTO "Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	:Id,
	:TargetName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @TaskId Integer -- Int32
SET     @TaskId = 1
DECLARE @Actual Boolean
SET     @Actual = True

INSERT INTO "TaskStage"
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

SELECT
	p."Id",
	p."TargetName",
	"a_ActualStage"."Id"
FROM
	"Task" p
		LEFT JOIN "TaskStage" "a_ActualStage" ON p."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True
WHERE
	p."TargetName" = 'bda.Requests'

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."TargetName",
	p."Id",
	"a_ActualStage"."Id"
FROM
	"Task" p
		LEFT JOIN "TaskStage" "a_ActualStage" ON p."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True
ORDER BY
	p."Id"

