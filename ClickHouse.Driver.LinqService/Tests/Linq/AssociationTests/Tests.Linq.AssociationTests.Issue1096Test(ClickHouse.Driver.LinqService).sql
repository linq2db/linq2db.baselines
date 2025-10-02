BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Issue1096Task
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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT DISTINCT
	t.Pk,
	t.Id,
	t.TargetName,
	a_ActualStage.Id,
	a_ActualStage.TaskId,
	a_ActualStage.Actual
FROM
	Issue1096Task t
		LEFT JOIN Issue1096TaskStage a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true

