-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Doubled Integer -- Int32
SET     @Doubled = 20
DECLARE @Tripled Integer -- Int32
SET     @Tripled = 30
DECLARE @Plain Integer -- Int32
SET     @Plain = 10

INSERT INTO "DivergentConversionRow"
(
	"Id",
	"Doubled",
	"Tripled",
	"Plain"
)
VALUES
(
	@Id,
	@Doubled,
	@Tripled,
	@Plain
)

-- Firebird.4 Firebird4
DECLARE @PlainValue Integer -- Int32
SET     @PlainValue = 10

SELECT
	"r"."Doubled",
	"r"."Tripled",
	"r"."Plain",
	"r"."Doubled" + "r"."Doubled",
	"r"."Plain" + "r"."Plain",
	"r"."Doubled" + CAST(@PlainValue AS Int)
FROM
	"DivergentConversionRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4
DECLARE @Doubled Integer -- Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	"DivergentConversionRow" "r"
WHERE
	"r"."Doubled" = @Doubled

