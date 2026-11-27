-- ClickHouse.Driver ClickHouse
INSERT INTO TaskWithStage
(
	Pk,
	Id,
	TargetName
)
VALUES
(
	1,
	1,
	'bda.Requests'
)

-- ClickHouse.Driver ClickHouse
INSERT INTO TaskStageRecord
(
	Id,
	TaskId,
	Actual
)
VALUES
(
	1,
	1,
	true
)

-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	t.Pk,
	t.Id,
	t.TargetName,
	a_ActualStage.Id,
	a_ActualStage.TaskId,
	a_ActualStage.Actual
FROM
	TaskWithStage t
		LEFT JOIN TaskStageRecord a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true

