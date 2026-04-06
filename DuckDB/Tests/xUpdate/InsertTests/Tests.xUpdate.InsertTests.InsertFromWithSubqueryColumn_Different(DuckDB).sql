-- DuckDB
DECLARE $id1  -- Int32
SET     $id1 = 1
DECLARE $id3  -- Int32
SET     $id3 = 3
DECLARE $id2  -- Int32
SET     $id2 = 2
DECLARE $id4  -- Int32
SET     $id4 = 4

INSERT INTO InsertFromWithConstantsTable
(
	Id,
	"Value",
	Value1,
	Value2,
	Value3,
	Value4
)
VALUES
(
	CAST($id1 AS INTEGER),
	CAST($id3 AS INTEGER),
	(
		SELECT
			r.Value4
		FROM
			InsertFromWithConstantsTable r
		WHERE
			r.Id = CAST($id2 AS INTEGER)
	),
	(
		SELECT
			r_1.Value3
		FROM
			InsertFromWithConstantsTable r_1
		WHERE
			r_1.Id = CAST($id4 AS INTEGER)
		LIMIT 1
	),
	'string 1',
	'string 2'
)

