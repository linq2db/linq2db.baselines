BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	'Id',
	it.Id,
	sumOrNull(a_ActualStage.Id)
FROM
	Task it
		LEFT JOIN TaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
GROUP BY
	it.Id

