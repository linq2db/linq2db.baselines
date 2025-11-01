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

-- Informix.DB2 Informix

SELECT DISTINCT
	t.Id,
	t.TargetName,
	a_ActualStage.Id,
	a_ActualStage.TaskId,
	a_ActualStage.Actual
FROM
	Issue1096Task t
		LEFT JOIN Issue1096TaskStage a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'::BOOLEAN

