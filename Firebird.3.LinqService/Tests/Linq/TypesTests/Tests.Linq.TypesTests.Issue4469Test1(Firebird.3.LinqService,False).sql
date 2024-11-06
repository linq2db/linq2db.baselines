BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Integer Integer -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double Double
SET     @Double = 100

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 33

SELECT
	"v"."Integer" / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param_1 AS Int),
	"v"."Double" / CAST(@param_1 AS Int)
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

