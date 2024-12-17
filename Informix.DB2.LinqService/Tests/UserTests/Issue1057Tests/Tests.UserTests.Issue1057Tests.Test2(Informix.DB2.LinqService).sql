﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Task"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Task"
(
	Id         Int           NOT NULL,
	TargetName NVarChar(255)     NULL,

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
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Task"
(
	Id,
	TargetName
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TargetName VarChar(4) -- String
SET     @TargetName = 'None'

INSERT INTO "Task"
(
	Id,
	TargetName
)
VALUES
(
	@Id,
	@TargetName
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
	p.Id,
	p.TargetName,
	a_ActualStage.Id
FROM
	"Task" p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'::BOOLEAN
WHERE
	p.TargetName = 'bda.Requests'

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.TargetName,
	p.Id,
	a_ActualStage.Id
FROM
	"Task" p
		LEFT JOIN TaskStage a_ActualStage ON p.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'::BOOLEAN
ORDER BY
	p.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Task"

