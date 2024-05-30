BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Task

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Task
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TaskStage
(
	Id     Int32,
	TaskId Int32,
	Actual Bool,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	'Id',
	it.Id,
	sumOrNull(a_ActualStage.Id)
FROM
	Task it
		LEFT JOIN TaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
GROUP BY
	it.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Task

