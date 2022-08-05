﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BaseTable"
			(
				"Value" Int NOT NULL,
				"Id"    Int NOT NULL,

				CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
SELECT 100,1 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1
	"x"."Value",
	"x"."Id"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

