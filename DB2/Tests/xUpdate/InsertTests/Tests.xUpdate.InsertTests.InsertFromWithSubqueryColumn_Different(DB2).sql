-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id3 Integer(4) -- Int32
SET     @id3 = 3
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2
DECLARE @id4 Integer(4) -- Int32
SET     @id4 = 4

INSERT INTO "InsertFromWithConstantsTable"
(
	"Id",
	"Value",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	CAST(@id1 AS Int),
	CAST(@id3 AS Int),
	(
		SELECT
			"r"."Value4"
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"r"."Id" = @id2
	),
	(
		SELECT
			"r_1"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_1"
		WHERE
			"r_1"."Id" = @id4
		FETCH NEXT 1 ROWS ONLY
	),
	'string 1',
	'string 2'
)

