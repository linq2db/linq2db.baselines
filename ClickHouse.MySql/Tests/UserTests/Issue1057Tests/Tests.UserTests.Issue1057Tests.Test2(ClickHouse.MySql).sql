BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Task

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Task
(
	Id         Int32,
	TargetName Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	Task p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
WHERE
	p.TargetName = 'bda.Requests' AND p.TargetName IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.TargetName,
	p.Id,
	a_ActualStage.Id
FROM
	Task p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
ORDER BY
	p.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Task

