-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1

INSERT INTO `Task`
(
	Id
)
VALUES
(
	$Id
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2

INSERT INTO `Task`
(
	Id
)
VALUES
(
	$Id
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
	'Id'u as Name,
	it.Id as Id,
	SUM(a_ActualStage_1.Id) as Value_1
FROM
	`Task` it
		LEFT JOIN (
			SELECT
				a_ActualStage.TaskId as TaskId,
				a_ActualStage.Id as Id
			FROM
				TaskStage a_ActualStage
			WHERE
				a_ActualStage.Actual = true
		) a_ActualStage_1 ON it.Id = a_ActualStage_1.TaskId
GROUP BY
	it.Id

