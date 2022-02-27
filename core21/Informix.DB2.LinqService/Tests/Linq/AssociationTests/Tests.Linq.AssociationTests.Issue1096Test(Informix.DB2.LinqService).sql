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

SELECT
	t1.Id,
	t1.TargetName,
	t1.Id_1,
	t1.TaskId,
	t1.Actual
FROM
	(
		SELECT DISTINCT
			t.Id,
			t.TargetName,
			a_ActualStage.Id as Id_1,
			a_ActualStage.TaskId,
			a_ActualStage.Actual
		FROM
			Issue1096Task t
				LEFT JOIN Issue1096TaskStage a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'
	) t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1096TaskStage

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1096Task

