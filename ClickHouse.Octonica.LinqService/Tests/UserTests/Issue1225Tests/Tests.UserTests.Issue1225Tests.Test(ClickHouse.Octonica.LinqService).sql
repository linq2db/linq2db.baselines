BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Task

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Task
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Task
(
	Id
)
VALUES
(
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	'Id',
	selectParam.Id,
	sumOrNull(CASE
		WHEN a_ActualStage.Id IS NULL
			THEN NULL
		ELSE a_ActualStage.Id
	END)
FROM
	Task selectParam
		LEFT JOIN TaskStage a_ActualStage ON selectParam.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = true
GROUP BY
	selectParam.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Task

