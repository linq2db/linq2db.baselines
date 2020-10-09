BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Task"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "TaskStage"
(
	"Id"     Int     NOT NULL,
	"TaskId" Int     NOT NULL,
	"Actual" Boolean NOT NULL,

	CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.9.5 PostgreSQL

SELECT
	'Id',
	"selectParam"."Id",
	Sum(CASE
		WHEN "a_ActualStage"."Id" IS NULL
			THEN NULL
		ELSE "a_ActualStage"."Id"
	END)
FROM
	"Task" "selectParam"
		LEFT JOIN "TaskStage" "a_ActualStage" ON "selectParam"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = True
GROUP BY
	"selectParam"."Id",
	"selectParam"."Id"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "TaskStage"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "Task"

