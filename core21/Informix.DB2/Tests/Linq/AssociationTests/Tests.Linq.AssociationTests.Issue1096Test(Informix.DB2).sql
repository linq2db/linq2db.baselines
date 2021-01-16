BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1096Task
(
	Id         Int           NOT NULL,
	TargetName NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1096TaskStage
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

INSERT INTO Issue1096Task
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
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO Issue1096Task
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
SET     @Id = 1
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual Char(1) -- StringFixedLength
SET     @Actual = 't'

INSERT INTO Issue1096TaskStage
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

DROP TABLE Issue1096TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1096Task

