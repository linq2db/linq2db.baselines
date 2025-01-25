BeforeExecute
--  Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MyEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MyEntity"';
END

BeforeExecute
--  Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MyEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MyEntity"
			(
				"Id"   BigInt                                 NOT NULL,
				"Name" VarChar(256) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
--  Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MyEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MyEntity"';
END

BeforeExecute
--  Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MyEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MyEntity"
			(
				"Id"   BigInt                                 NOT NULL,
				"Name" VarChar(256) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

