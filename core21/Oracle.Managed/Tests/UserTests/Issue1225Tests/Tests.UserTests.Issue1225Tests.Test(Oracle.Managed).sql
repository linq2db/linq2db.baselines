BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Task"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TaskStage"
(
	"Id"     Int     NOT NULL,
	"TaskId" Int     NOT NULL,
	"Actual" Char(1) NOT NULL,

	CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
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
-- Oracle.Managed Oracle12
DECLARE @Id Int32
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
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual Int16
SET     @Actual = 1

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
-- Oracle.Managed Oracle12

SELECT
	'Id',
	selectParam."Id",
	Sum(CASE
		WHEN a_ActualStage."Id" IS NULL
			THEN NULL
		ELSE a_ActualStage."Id"
	END)
FROM
	"Task" selectParam
		LEFT JOIN "TaskStage" a_ActualStage ON selectParam."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
GROUP BY
	selectParam."Id"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TaskStage"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Task"

