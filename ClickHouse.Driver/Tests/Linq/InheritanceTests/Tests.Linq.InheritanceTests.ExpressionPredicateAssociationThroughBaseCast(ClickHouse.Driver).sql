-- ClickHouse.Driver ClickHouse
INSERT INTO DiscriminatedTaskBase
(
	Id,
	TargetName
)
VALUES
(
	1,
	'bda.Requests'
)

-- ClickHouse.Driver ClickHouse
INSERT INTO DiscriminatedTaskBase
(
	Id,
	TargetName
)
VALUES
(
	2,
	'None'
)

-- ClickHouse.Driver ClickHouse
INSERT INTO DiscriminatedTaskStage
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

-- ClickHouse.Driver ClickHouse
SELECT
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	DiscriminatedTaskBase p
		LEFT JOIN DiscriminatedTaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
WHERE
	p.TargetName = 'bda.Requests'

-- ClickHouse.Driver ClickHouse
SELECT
	p.TargetName,
	p.Id,
	a_ActualStage.Id
FROM
	DiscriminatedTaskBase p
		LEFT JOIN DiscriminatedTaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
ORDER BY
	p.Id

