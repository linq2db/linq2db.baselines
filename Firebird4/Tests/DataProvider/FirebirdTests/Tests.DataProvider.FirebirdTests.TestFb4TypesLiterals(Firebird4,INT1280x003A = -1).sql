﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestFbTypesTable"
			(
				"Id"         Int                      NOT NULL,
				"DecFloat16" DECFLOAT(16),
				"DecFloat30" DECFLOAT,
				"DecFloat34" DECFLOAT,
				"DecFloat"   DECFLOAT,
				"DateTimeTZ" TIMESTAMP WITH TIME ZONE,
				"TimeTZ"     TIME WITH TIME ZONE,
				"Int128"     INT128,

				CONSTRAINT "PK_TestFbTypesTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Int128 Int128 -- Object
SET     @Int128 = -1

INSERT INTO "TestFbTypesTable"
(
	"Id",
	"Int128"
)
VALUES
(
	1,
	CAST(@Int128 AS INT128)
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."Int128" = -1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

