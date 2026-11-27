-- ClickHouse.Octonica ClickHouse
INSERT INTO GroupedTask
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO GroupedTask
(
	Id
)
VALUES
(
	2
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO GroupedTaskStage
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
	'Id',
	it.Id,
	sumOrNull(a_ActualStage.Id)
FROM
	GroupedTask it
		LEFT JOIN GroupedTaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
GROUP BY
	it.Id

