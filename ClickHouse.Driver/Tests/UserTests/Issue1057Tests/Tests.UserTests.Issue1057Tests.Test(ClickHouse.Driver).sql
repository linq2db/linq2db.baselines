BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	Task p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
WHERE
	p.TargetName = 'bda.Requests'

