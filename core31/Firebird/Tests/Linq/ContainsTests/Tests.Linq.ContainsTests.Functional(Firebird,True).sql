﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Src"
			(
				"Id"   Int                                  NOT NULL,
				"Int"  Int,
				"Enum" VarChar(5) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum"
)
SELECT 1,NULL,CAST(NULL AS VarChar(5) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,2,'TWO' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1) OR "s"."Int" IS NULL

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (2) AND "s"."Int" IS NOT NULL

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Int" NOT IN (-1, 2) OR "s"."Int" IS NULL)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Src')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Src"';
END

