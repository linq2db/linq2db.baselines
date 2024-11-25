BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Mixed"
			(
				"Int"    Int                                    NOT NULL,
				"Str"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Date"   TimeStamp                              NOT NULL,
				"Double" Float                                  NOT NULL,
				"Bool"   CHAR(1)                                NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Int Integer -- Int32
SET     @Int = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2001-01-01' AS timestamp)
DECLARE @Double Double
SET     @Double = 1
DECLARE @Bool Char -- String
SET     @Bool = '1'

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2002-02-02' AS timestamp)
DECLARE @Double Double
SET     @Double = 2
DECLARE @Bool Char -- String
SET     @Bool = '0'

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND
	"t"."Str" = 'One' AND
	"t"."Double" = 1 AND
	"t"."Bool" = '1' AND
	EXISTS(
		SELECT
			1
		FROM
			"Mixed" "u"
		WHERE
			2 > "u"."Int" OR 2 = "u"."Int" AND "u"."Date" > "t"."Date"
	)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

