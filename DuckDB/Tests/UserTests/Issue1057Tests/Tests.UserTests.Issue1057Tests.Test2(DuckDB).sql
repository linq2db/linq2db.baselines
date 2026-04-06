-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $TargetName NVarChar(12) -- String
SET     $TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	Id,
	TargetName
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($TargetName AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $TargetName NVarChar(4) -- String
SET     $TargetName = 'None'

INSERT INTO "Task"
(
	Id,
	TargetName
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($TargetName AS VARCHAR)
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
	CAST($Id AS INTEGER),
	CAST($TaskId AS INTEGER),
	CAST($Actual AS BOOLEAN)
)

-- DuckDB

SELECT
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	"Task" p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = True
WHERE
	p.TargetName = 'bda.Requests'

-- DuckDB

SELECT
	p.TargetName,
	p.Id,
	a_ActualStage.Id
FROM
	"Task" p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = True
ORDER BY
	p.Id

