-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @Stored VarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO CalcSubtypeDual
(
	Id,
	"Type",
	Stored
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1."Type",
	t1.Id,
	t1.Stored,
	Nvl(t1.Stored, '') || '!'
FROM
	CalcSubtypeDual t1

