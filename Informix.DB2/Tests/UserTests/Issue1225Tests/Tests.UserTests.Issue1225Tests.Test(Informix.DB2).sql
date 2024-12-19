BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Task"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Task"
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TaskStage
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
	it.Id,
	SUM(a_ActualStage.Id)
FROM
	"Task" it
		LEFT JOIN TaskStage a_ActualStage ON it.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'::BOOLEAN
GROUP BY
	it.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Task"

