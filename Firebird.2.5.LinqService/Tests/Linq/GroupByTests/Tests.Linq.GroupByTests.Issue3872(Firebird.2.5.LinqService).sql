BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3761Table"
			(
				LETO     Int       NOT NULL,
				STEVILKA Int       NOT NULL,
				DATUM    TimeStamp,
				SKUPAJ   Decimal,

				CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	MAX("r"."PersonID")
FROM
	"Person" "r"
UNION ALL
SELECT
	"r_1"."PersonID"
FROM
	"Person" "r_1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

