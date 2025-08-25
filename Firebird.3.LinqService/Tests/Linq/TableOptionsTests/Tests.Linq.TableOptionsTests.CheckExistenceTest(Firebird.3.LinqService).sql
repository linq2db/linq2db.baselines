BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisposableTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DisposableTable"
			(
				ID Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisposableTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisposableTable"';
END

