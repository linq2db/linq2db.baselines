BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Task"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Task"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TaskStage"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TaskStage"
(
	"Id"     Int     NOT NULL,
	"TaskId" Int     NOT NULL,
	"Actual" Boolean NOT NULL,

	CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."Key_1",
	Sum(CASE
		WHEN t1."Id" IS NULL THEN NULL
		ELSE t1."Id"
	END)
FROM
	(
		SELECT
			'Id' as "Name",
			"selectParam"."Id" as "Key_1",
			"a_ActualStage"."Id"
		FROM
			"Task" "selectParam"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True
	) t1
GROUP BY
	t1."Name",
	t1."Key_1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TaskStage"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Task"

