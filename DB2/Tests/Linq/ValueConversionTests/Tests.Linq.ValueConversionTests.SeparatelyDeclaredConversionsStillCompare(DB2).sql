-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Span BigInt(8) -- Int64
SET     @Span = 54000000000

INSERT INTO "SeparatelyDeclaredRowA"
(
	"Id",
	"Span"
)
VALUES
(
	@Id,
	@Span
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Span BigInt(8) -- Int64
SET     @Span = 54000000000

INSERT INTO "SeparatelyDeclaredRowB"
(
	"Id",
	"Span"
)
VALUES
(
	@Id,
	@Span
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id"
FROM
	"SeparatelyDeclaredRowA" "x",
	"SeparatelyDeclaredRowB" "y"
WHERE
	"x"."Span" = "y"."Span"

