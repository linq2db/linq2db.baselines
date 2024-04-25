﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringTypesTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StringTypesTable"
			(
				"Id"             Int                                   NOT NULL,
				"CharColumn"     Char(50),
				"NCharColumn"    NChar(50),
				"VarCharColumn"  VarChar(50) CHARACTER SET UNICODE_FSS,
				"NVarCharColumn" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- String
SET     @CharColumn = 'someString'
DECLARE @NCharColumn Char(10) -- String
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn VarChar(10) -- String
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn VarChar(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@CharColumn AS Char(10)),
	CAST(@NCharColumn AS CHAR(10)),
	CAST(@VarCharColumn AS VarChar(10) CHARACTER SET UNICODE_FSS),
	CAST(@NVarCharColumn AS VARCHAR(10))
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id",
	"t"."CharColumn",
	"t"."NCharColumn",
	"t"."VarCharColumn",
	"t"."NVarCharColumn"
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" STARTING WITH 'some' AND
	"t"."NCharColumn" STARTING WITH 'some' AND
	"t"."VarCharColumn" STARTING WITH 'some' AND
	"t"."NVarCharColumn" STARTING WITH 'some'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StringTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StringTypesTable"';
END

