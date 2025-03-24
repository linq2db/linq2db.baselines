BeforeExecute
--  Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table2"';
END

