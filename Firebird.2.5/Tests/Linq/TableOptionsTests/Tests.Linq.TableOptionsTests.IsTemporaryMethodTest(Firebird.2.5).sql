﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TestTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL,

				CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Id",
	"t1"."Value",
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

