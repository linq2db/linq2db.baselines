BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Task"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Task"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TaskStage"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TaskStage"
		(
			"Id"     Int     NOT NULL,
			"TaskId" Int     NOT NULL,
			"Actual" Char(1) NOT NULL,

			CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	'Id',
	it."Id",
	SUM(a_ActualStage."Id")
FROM
	"Task" it
		LEFT JOIN "TaskStage" a_ActualStage ON it."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
GROUP BY
	it."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TaskStage"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Task"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

