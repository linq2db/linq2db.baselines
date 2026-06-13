-- YDB Ydb
DECLARE $Pk Int32
SET     $Pk = 1
DECLARE $Id Int32
SET     $Id = 1
DECLARE $TargetName Text(12) -- String
SET     $TargetName = 'bda.Requests'u

INSERT INTO Issue1096Task
(
	Pk,
	Id,
	TargetName
)
VALUES
(
	$Pk,
	$Id,
	$TargetName
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $TaskId Int32
SET     $TaskId = 1
DECLARE $Actual Bool -- Boolean
SET     $Actual = true

INSERT INTO Issue1096TaskStage
(
	Id,
	TaskId,
	Actual
)
VALUES
(
	$Id,
	$TaskId,
	$Actual
)

-- YDB Ydb

SELECT DISTINCT
	t.Pk as Pk,
	t.Id as Id,
	t.TargetName as TargetName,
	a_ActualStage_1.Id as Id_1,
	a_ActualStage_1.TaskId as TaskId,
	a_ActualStage_1.Actual as Actual
FROM
	Issue1096Task t
		LEFT JOIN (
			SELECT
				a_ActualStage.TaskId as TaskId,
				a_ActualStage.Actual as Actual,
				a_ActualStage.Id as Id
			FROM
				Issue1096TaskStage a_ActualStage
			WHERE
				a_ActualStage.Actual = true
		) a_ActualStage_1 ON t.Id = a_ActualStage_1.TaskId

