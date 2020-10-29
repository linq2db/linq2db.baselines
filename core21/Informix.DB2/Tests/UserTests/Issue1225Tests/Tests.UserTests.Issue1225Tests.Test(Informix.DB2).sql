BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE "Task"
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TaskStage
(
	Id     Int     NOT NULL,
	TaskId Int     NOT NULL,
	Actual BOOLEAN NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual Char(1) -- StringFixedLength
SET     @Actual = 't'

INSERT INTO TaskStage
(
	Id,
	TaskId,
	Actual
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Name,
	t1.Value_1,
	Sum(CASE
		WHEN t1.Id IS NULL THEN NULL
		ELSE t1.Id
	END)
FROM
	(
		SELECT
			'Id' as Key_1,
			selectParam.Id as Key_2,
			'Id' as Name,
			selectParam.Id as Value_1,
			a_ActualStage.Id
		FROM
			"Task" selectParam
				LEFT JOIN TaskStage a_ActualStage ON selectParam.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'
	) t1
GROUP BY
	t1.Key_2,
	t1.Name,
	t1.Value_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE "Task"

