BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Task

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Task
(
	Id Int32,

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
	it_1.Name,
	it_1.Value_1,
	sumOrNull(CASE
		WHEN it_1.Id IS NULL THEN NULL
		ELSE it_1.Id
	END)
FROM
	(
		SELECT
			'Id' as Name,
			it.Id as Value_1,
			a_ActualStage.Id as Id
		FROM
			Task it
				LEFT JOIN TaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
	) it_1
GROUP BY
	it_1.Name,
	it_1.Value_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Task

