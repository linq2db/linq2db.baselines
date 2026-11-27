-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Pk Int32
SET     @Pk = 1
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName Varchar2(12) -- String
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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual Int16
SET     @Actual = 1

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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT DISTINCT
	t."Pk",
	t."Id",
	t."TargetName",
	a_ActualStage."Id",
	a_ActualStage."TaskId",
	a_ActualStage."Actual"
FROM
	"TaskWithStage" t
		LEFT JOIN "TaskStageRecord" a_ActualStage ON t."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1

