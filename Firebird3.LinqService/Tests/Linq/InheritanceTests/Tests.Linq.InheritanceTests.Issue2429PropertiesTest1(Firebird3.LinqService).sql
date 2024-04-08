﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BaseTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL,

				CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BaseValue Integer -- Int32
SET     @BaseValue = 100

INSERT INTO "BaseTable"
(
	"Id",
	"Value"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@BaseValue AS Int)
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

