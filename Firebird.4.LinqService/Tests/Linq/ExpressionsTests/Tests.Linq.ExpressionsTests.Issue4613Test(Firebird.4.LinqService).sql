BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Service"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4613Service"
			(
				"IdContract" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Contract"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4613Contract"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Contract"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Service"';
END

