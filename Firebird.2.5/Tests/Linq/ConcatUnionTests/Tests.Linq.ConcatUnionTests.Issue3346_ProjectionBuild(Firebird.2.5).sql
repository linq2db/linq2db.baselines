BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPerson')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPerson"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPerson')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ComplexPerson"
			(
				"Id"        Int                                    NOT NULL,
				"FirstName" VarChar(255) CHARACTER SET UNICODE_FSS,
				"LastName"  VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ComplexPerson" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."Id",
	"x"."FirstName",
	"x"."LastName"
FROM
	"ComplexPerson" "x"
WHERE
	"x"."Id" < 10
UNION
SELECT
	"x_1"."Id",
	"x_1"."FirstName",
	"x_1"."LastName"
FROM
	"ComplexPerson" "x_1"
WHERE
	"x_1"."Id" < 20

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ComplexPerson')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ComplexPerson"';
END

