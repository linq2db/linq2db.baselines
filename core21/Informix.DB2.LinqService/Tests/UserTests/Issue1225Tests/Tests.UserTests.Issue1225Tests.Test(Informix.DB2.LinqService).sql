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
	'Id',
	selectParam.Id,
	Sum(CASE
		WHEN a_ActualStage.Id IS NULL
			THEN NULL
		ELSE a_ActualStage.Id
	END)
FROM
	"Task" selectParam
		LEFT JOIN TaskStage a_ActualStage ON selectParam.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'
GROUP BY
	selectParam.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE "Task"

