-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Type Integer(4) -- Int32
SET     @Type = 1
DECLARE @Name_First VarChar(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second VarChar(3) -- String
SET     @Name_Second = 'Doe'

INSERT INTO CalcSubtypeTable
(
	Id,
	"Type",
	Name_First,
	Name_Second
)
VALUES
(
	@Id,
	@Type,
	@Name_First,
	@Name_Second
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Type",
	t1.Name_First,
	t1.Name_Second,
	Nvl(t1.Name_First, '') || ' ' || Nvl(t1.Name_Second, '')
FROM
	CalcSubtypeTable t1

