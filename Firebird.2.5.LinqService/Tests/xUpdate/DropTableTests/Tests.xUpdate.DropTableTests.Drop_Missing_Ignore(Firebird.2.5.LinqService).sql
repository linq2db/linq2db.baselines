BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table"';
END

