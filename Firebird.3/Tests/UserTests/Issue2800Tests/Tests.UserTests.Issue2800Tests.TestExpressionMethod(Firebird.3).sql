BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "Car"
(
	"Id",
	"Name"
)
SELECT 1,CAST('Special' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'NoSpecial' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" <> 'Special' OR "x"."Name" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special' AND "x"."Name" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" <> 'Special' OR "x"."Name" IS NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Car" "x"
WHERE
	"x"."Name" = 'Special' AND "x"."Name" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	"Car" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Car')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Car"';
END

