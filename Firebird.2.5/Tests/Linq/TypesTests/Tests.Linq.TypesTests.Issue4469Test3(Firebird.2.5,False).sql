BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4469Table"
			(
				"Integer" Int            NOT NULL,
				"Decimal" Decimal(10, 5) NOT NULL,
				"Double"  Float          NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
SELECT 100,100,100 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Double
SET     @param_2 = 33

SELECT FIRST 2
	CAST("v"."Integer" AS Float) / CAST(@param AS Int),
	CAST("v"."Decimal" AS Float) / CAST(@param_1 AS Decimal(10, 5)),
	"v"."Double" / CAST(@param_2 AS Float)
FROM
	"Issue4469Table" "v"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

