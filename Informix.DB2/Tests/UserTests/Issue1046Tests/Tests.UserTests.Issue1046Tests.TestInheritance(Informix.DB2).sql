-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue VarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO "Task"
(
	Id,
	TargetName,
	BdaValue
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- Informix.DB2 Informix
SELECT
	p.Id,
	p.TargetName,
	p.BdaValue
FROM
	"Task" p

-- Informix.DB2 Informix
SELECT
	p.BdaValue
FROM
	"Task" p

