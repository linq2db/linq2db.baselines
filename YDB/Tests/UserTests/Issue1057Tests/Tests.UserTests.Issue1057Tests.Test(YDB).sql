-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $TargetName Text(12) -- String
SET     $TargetName = 'bda.Requests'u

INSERT INTO `Task`
(
	Id,
	TargetName
)
VALUES
(
	$Id,
	$TargetName
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $TargetName Text(4) -- String
SET     $TargetName = 'None'u

INSERT INTO `Task`
(
	Id,
	TargetName
)
VALUES
(
	$Id,
	$TargetName
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $TaskId Int32
SET     $TaskId = 1
DECLARE $Actual Bool -- Boolean
SET     $Actual = true

INSERT INTO TaskStage
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

SELECT
	p.Id as Id,
	p.TargetName as TargetName,
	a_ActualStage_1.ActualStageId as ActualStageId
FROM
	`Task` p
		LEFT JOIN (
			SELECT
				a_ActualStage.TaskId as TaskId,
				a_ActualStage.Id as ActualStageId
			FROM
				TaskStage a_ActualStage
			WHERE
				a_ActualStage.Actual = true
		) a_ActualStage_1 ON p.Id = a_ActualStage_1.TaskId
WHERE
	p.TargetName = 'bda.Requests'u

