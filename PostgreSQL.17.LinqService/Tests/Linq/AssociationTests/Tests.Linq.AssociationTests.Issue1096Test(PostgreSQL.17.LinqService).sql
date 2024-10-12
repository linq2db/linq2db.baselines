BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1096Task"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1096Task"
(
	"Id"         Int  NOT NULL,
	"TargetName" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1096TaskStage"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1096TaskStage"
(
	"Id"     Int     NOT NULL,
	"TaskId" Int     NOT NULL,
	"Actual" Boolean NOT NULL,

	CONSTRAINT "PK_Issue1096TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName Text(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	t."Id",
	t."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"Issue1096Task" t
		LEFT JOIN "Issue1096TaskStage" "a_ActualStage" ON t."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1096TaskStage"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1096Task"

