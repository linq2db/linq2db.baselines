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
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	toInt32(2)
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
	toInt32(2),
	toInt32(1),
	true
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Name,
	t1.Key_1,
	sumOrNull(CASE
		WHEN t1.Id IS NULL THEN NULL
		ELSE t1.Id
	END)
FROM
	(
		SELECT
			'Id' as Name,
			selectParam.Id as Key_1,
			a_ActualStage.Id as Id
		FROM
			Task selectParam
				LEFT JOIN TaskStage a_ActualStage ON selectParam.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
	) t1
GROUP BY
	t1.Name,
	t1.Key_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Task

