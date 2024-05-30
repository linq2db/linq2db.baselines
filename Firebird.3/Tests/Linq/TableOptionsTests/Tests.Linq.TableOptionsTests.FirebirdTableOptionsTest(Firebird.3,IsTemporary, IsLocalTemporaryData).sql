BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TestTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

