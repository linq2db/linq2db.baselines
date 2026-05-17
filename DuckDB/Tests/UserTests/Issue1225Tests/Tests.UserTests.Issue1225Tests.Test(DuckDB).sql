-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1

INSERT INTO "Task"
(
	Id
)
VALUES
(
	$Id
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2

INSERT INTO "Task"
(
	Id
)
VALUES
(
	$Id
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $TaskId  -- Int32
SET     $TaskId = 1
DECLARE $Actual  -- Boolean
SET     $Actual = True

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

-- DuckDB

SELECT
	'Id',
	it.Id,
	SUM(a_ActualStage.Id)
FROM
	"Task" it
		LEFT JOIN TaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = True
GROUP BY
	it.Id

