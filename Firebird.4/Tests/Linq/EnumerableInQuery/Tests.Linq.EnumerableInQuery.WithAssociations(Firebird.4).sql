BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeItem"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeItem')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SomeItem"
			(
				"Id"      Int NOT NULL,
				"ColorId" Int,
				"StyleId" Int
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SomeItem"
(
	"Id",
	"ColorId",
	"StyleId"
)
SELECT 1,1,1 FROM rdb$database UNION ALL
SELECT 2,2,2 FROM rdb$database UNION ALL
SELECT 3,3,3 FROM rdb$database UNION ALL
SELECT 4,1,2 FROM rdb$database UNION ALL
SELECT 5,2,3 FROM rdb$database UNION ALL
SELECT 6,NULL,1 FROM rdb$database UNION ALL
SELECT 7,3,NULL FROM rdb$database UNION ALL
SELECT 8,NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeColor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeColor"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeColor')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SomeColor"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SomeColor"
(
	"Id",
	"Name"
)
SELECT 1,CAST('Red' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Green' FROM rdb$database UNION ALL
SELECT 3,'Blue' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeStyle')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeStyle"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeStyle')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SomeStyle"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "SomeStyle"
(
	"Id",
	"Name"
)
SELECT 1,CAST('Bold' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Italic' FROM rdb$database UNION ALL
SELECT 3,'Underline' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"it_1"."cond",
	"it_1"."ColorName",
	"it_1"."StyleName"
FROM
	"SomeItem" "t1"
		LEFT JOIN "SomeColor" "a_Color" ON "t1"."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON "t1"."StyleId" = "a_Style"."Id"
		LEFT JOIN LATERAL (
			SELECT
				"it"."ColorName",
				"it"."StyleName",
				1 as "cond"
			FROM
				(
					SELECT "a_Color"."Name" AS "ColorName", "a_Style"."Name" AS "StyleName" FROM rdb$database
					UNION ALL
					SELECT NULL, "a_Style"."Name" FROM rdb$database) "it"
		) "it_1" ON 1=1
WHERE
	"it_1"."ColorName" = 'Red'

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."ColorId",
	"t1"."StyleId",
	"a_Color"."Id",
	"a_Color"."Name",
	"a_Style"."Id",
	"a_Style"."Name"
FROM
	"SomeItem" "t1"
		LEFT JOIN "SomeColor" "a_Color" ON "t1"."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON "t1"."StyleId" = "a_Style"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeStyle')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeStyle"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeColor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeColor"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SomeItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SomeItem"';
END

