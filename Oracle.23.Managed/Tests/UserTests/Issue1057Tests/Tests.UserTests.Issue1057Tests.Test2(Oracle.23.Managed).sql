-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName Varchar2(12) -- String
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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TargetName Varchar2(4) -- String
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

-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."Id",
	p."TargetName",
	a_ActualStage."Id"
FROM
	"Task" p
		LEFT JOIN "TaskStage" a_ActualStage ON p."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
WHERE
	p."TargetName" = 'bda.Requests'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p."TargetName",
	p."Id",
	a_ActualStage."Id"
FROM
	"Task" p
		LEFT JOIN "TaskStage" a_ActualStage ON p."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
ORDER BY
	p."Id"

