-- Informix.DB2 Informix
DECLARE @Pk Integer(4) -- Int32
SET     @Pk = 1
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO TaskWithStage
(
	Pk,
	Id,
	TargetName
)
VALUES
(
	@Pk,
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

INSERT INTO TaskStageRecord
(
	Id,
	TaskId,
	Actual
)
VALUES
(
	@Id,
	@TaskId,
	@Actual::BOOLEAN
)

-- Informix.DB2 Informix
SELECT DISTINCT
	t.Pk,
	t.Id,
	t.TargetName,
	a_ActualStage.Id,
	a_ActualStage.TaskId,
	a_ActualStage.Actual
FROM
	TaskWithStage t
		LEFT JOIN TaskStageRecord a_ActualStage ON t.Id = a_ActualStage.TaskId AND a_ActualStage.Actual = 't'::BOOLEAN

