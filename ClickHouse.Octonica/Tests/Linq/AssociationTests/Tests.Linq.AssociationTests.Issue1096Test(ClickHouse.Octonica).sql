-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1096Task
(
	Id,
	TargetName
)
VALUES
(
	1,
	'bda.Requests'
)

-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1096Task
(
	Id,
	TargetName
)
VALUES
(
	1,
	'bda.Requests'
)

-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1096TaskStage
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

-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	t.Id,
	t.TargetName,
	a_ActualStage.Id,
	a_ActualStage.TaskId,
	a_ActualStage.Actual
FROM
	Issue1096Task t
		LEFT JOIN Issue1096TaskStage a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true

