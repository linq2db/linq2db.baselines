BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table1"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2815Table1"
			(
				SRC_BIC       Int NOT NULL,
				DES_BIC       Int NOT NULL,
				IDF           Int NOT NULL,
				TREA_CENT     Int NOT NULL,
				NOT_HANDLED   Int NOT NULL,
				TRANS_CHANNEL Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2815Table2"
			(
				ISO  Int     NOT NULL,
				SEPA BOOLEAN NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table3"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue2815Table3"
			(
				"TreasuryCenter" Int NOT NULL,
				BIC              Int NOT NULL,
				"Sepa"           Int NOT NULL,
				"Trans_Channel"  Int NOT NULL,
				"Idf"            Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table3"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue2815Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue2815Table1"';
END

