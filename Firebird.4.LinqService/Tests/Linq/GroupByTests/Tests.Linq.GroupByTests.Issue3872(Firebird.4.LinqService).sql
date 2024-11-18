BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3761Table"
			(
				LETO     Int             NOT NULL,
				STEVILKA Int             NOT NULL,
				DATUM    TimeStamp,
				SKUPAJ   Decimal(18, 10),

				CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST('MAX' AS VARCHAR(3)),
	MAX("r"."PersonID"),
	NULL
FROM
	"Person" "r"
UNION ALL
SELECT
	NULL,
	NULL,
	"r_1"."PersonID"
FROM
	"Person" "r_1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

