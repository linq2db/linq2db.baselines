BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	"v"."Integer" / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4469Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4469Table"';
END

