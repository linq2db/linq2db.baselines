-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id3 Integer(4) -- Int32
SET     @id3 = 3
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

INSERT INTO InsertFromWithConstantsTable
(
	Id,
	"Value",
	Value1,
	Value2,
	Value3,
	Value4
)
SELECT
	@id1::Int,
	@id3::Int,
	r.Value4,
	r.Value4,
	'string 1',
	'string 2'
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t1
		LEFT JOIN InsertFromWithConstantsTable r ON r.Id = @id2

