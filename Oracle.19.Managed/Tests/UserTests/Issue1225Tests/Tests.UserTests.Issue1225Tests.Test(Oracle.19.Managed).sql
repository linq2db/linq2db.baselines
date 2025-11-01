-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	'Id',
	it."Id",
	SUM(a_ActualStage."Id")
FROM
	"Task" it
		LEFT JOIN "TaskStage" a_ActualStage ON it."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
GROUP BY
	it."Id"

