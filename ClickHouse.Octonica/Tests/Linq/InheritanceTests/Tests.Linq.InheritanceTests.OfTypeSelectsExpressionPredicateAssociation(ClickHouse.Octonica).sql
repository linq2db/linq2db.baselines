-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	DiscriminatedTaskBase p
		LEFT JOIN DiscriminatedTaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
WHERE
	p.TargetName = 'bda.Requests'

