BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @Int128 Int128 -- Object
SET     @Int128 = 170141183460469231731687303715884105727

INSERT INTO "TestFbTypesTable"
(
	"Id",
	"Int128"
)
VALUES
(
	1,
	@Int128
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"TestFbTypesTable" "t1"
WHERE
	"t1"."Int128" = 170141183460469231731687303715884105727 AND
	"t1"."Int128" IS NOT NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestFbTypesTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestFbTypesTable"';
END

