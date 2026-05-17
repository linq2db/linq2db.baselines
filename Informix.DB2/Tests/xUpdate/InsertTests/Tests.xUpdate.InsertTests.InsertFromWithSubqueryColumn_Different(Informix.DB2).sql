-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id3 Integer(4) -- Int32
SET     @id3 = 3
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2
DECLARE @id4 Integer(4) -- Int32
SET     @id4 = 4

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
	(
		SELECT
			r_1.Value4
		FROM
			InsertFromWithConstantsTable r_1
		WHERE
			r_1.Id = @id2
	),
	t1.Value2,
	'string 1',
	'string 2'
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t2
		LEFT JOIN (
			SELECT FIRST 1
				r.Value3 as Value2
			FROM
				InsertFromWithConstantsTable r
			WHERE
				r.Id = @id4
		) t1 ON 1=1

