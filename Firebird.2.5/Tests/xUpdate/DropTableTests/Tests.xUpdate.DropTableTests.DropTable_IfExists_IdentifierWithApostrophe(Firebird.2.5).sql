-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Drop''ApostropheTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Drop''ApostropheTest"';
END

