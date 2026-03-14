-- Firebird.2.5 Firebird
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id3 Integer -- Int32
SET     @id3 = 3
DECLARE @id4 Integer -- Int32
SET     @id4 = 4
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

INSERT INTO "InsertFromWithConstantsTable"
(
	"Id",
	"Value",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
SELECT
	CAST(@id1 AS Int),
	CAST(@id3 AS Int),
	"r"."Value4",
	(
		SELECT FIRST 1
			"r_1"."Value3"
		FROM
			"InsertFromWithConstantsTable" "r_1"
		WHERE
			"r_1"."Id" = @id4
	),
	"r"."Value4",
	'string 2'
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t1"
		LEFT JOIN "InsertFromWithConstantsTable" "r" ON "r"."Id" = @id2

