BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Task
(
	Id,
	TargetName
)
VALUES
(
	1,
	'bda.Requests'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO Task
(
	Id,
	TargetName
)
VALUES
(
	2,
	'None'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO TaskStage
(
	Id,
	TaskId,
	Actual
)
VALUES
(
	2,
	1,
	true
)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	Task p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
WHERE
	p.TargetName = 'bda.Requests'

