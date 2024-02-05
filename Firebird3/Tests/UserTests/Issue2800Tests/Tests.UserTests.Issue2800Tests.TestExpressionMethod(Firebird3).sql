BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Car"
			(
				"Id"   Int                                   NOT NULL,
				"Name" VarChar(50) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Car" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Car"
(
	"Id",
	"Name"
)
SELECT 1,CAST('Special' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'NoSpecial' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	("x"."Name" <> 'Special' OR "x"."Name" IS NULL)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special'

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	("x"."Name" <> 'Special' OR "x"."Name" IS NULL)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special'

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

