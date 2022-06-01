BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"     Int                                   NOT NULL,
				A        Int,
				B        Int,
				"EnumA"  NChar(1),
				"EnumB"  NChar(1),
				"CEnumA" VarChar(20) CHARACTER SET UNICODE_FSS,
				"CEnumB" VarChar(20) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "Src"
(
	"Id",
	A,
	B,
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
SELECT 100,NULL,NULL,NULL,NULL,CAST(NULL AS VarChar(20) CHARACTER SET UNICODE_FSS),CAST(NULL AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 101,NULL,1,NULL,'A',NULL,'___One___' FROM rdb$database UNION ALL
SELECT 110,1,NULL,'A',NULL,'___One___',NULL FROM rdb$database UNION ALL
SELECT 111,1,1,'A','A','___One___','___One___' FROM rdb$database UNION ALL
SELECT 112,1,2,'A','B','___One___','___Two___' FROM rdb$database UNION ALL
SELECT 121,2,1,'B','A','___Two___','___One___' FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT
	"x"."Id"
FROM
	"Src" "x"
WHERE
	("x"."CEnumA" = "x"."CEnumB" OR "x"."CEnumA" IS NULL AND "x"."CEnumB" IS NULL)
ORDER BY
	"x"."Id"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

