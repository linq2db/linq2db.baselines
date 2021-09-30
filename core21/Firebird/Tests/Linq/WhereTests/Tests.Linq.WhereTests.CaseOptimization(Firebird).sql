﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithString"
			(
				"Id"          Int                                    NOT NULL,
				"StringValue" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
SELECT 1,'Str1' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~'

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

