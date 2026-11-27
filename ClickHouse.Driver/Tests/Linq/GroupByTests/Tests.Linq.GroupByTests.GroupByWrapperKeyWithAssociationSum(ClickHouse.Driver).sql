-- ClickHouse.Driver ClickHouse
INSERT INTO GroupedTask
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.Driver ClickHouse
INSERT INTO GroupedTask
(
	Id
)
VALUES
(
	2
)

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	'Id',
	it.Id,
	sumOrNull(a_ActualStage.Id)
FROM
	GroupedTask it
		LEFT JOIN GroupedTaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
GROUP BY
	it.Id

