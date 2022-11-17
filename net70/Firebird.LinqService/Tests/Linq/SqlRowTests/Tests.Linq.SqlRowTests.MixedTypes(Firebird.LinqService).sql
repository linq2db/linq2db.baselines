﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Mixed"
			(
				"Int"    Int                                    NOT NULL,
				"Str"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Date"   TimeStamp                              NOT NULL,
				"Double" Float                                  NOT NULL,
				"Bool"   CHAR                                   NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 1
DECLARE @Str VarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = CAST('2001-01-01' AS timestamp)
DECLARE @Double_1 Double
SET     @Double_1 = 1
DECLARE @Bool Char(1) -- String
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- Firebird
DECLARE @Int_1 Integer -- Int32
SET     @Int_1 = 2
DECLARE @Str VarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = CAST('2002-02-02' AS timestamp)
DECLARE @Double_1 Double
SET     @Double_1 = 2
DECLARE @Bool Char(1) -- String
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
	@Int_1,
	@Str,
	@Date_1,
	@Double_1,
	@Bool
)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND
	"t"."Str" = 'One' AND
	"t"."Double" = 1 AND
	"t"."Bool" = 1 AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" "u"
		WHERE
			(2 > "u"."Int" OR 2 = "u"."Int" AND "u"."Date" > "t"."Date")
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Mixed')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Mixed"';
END

