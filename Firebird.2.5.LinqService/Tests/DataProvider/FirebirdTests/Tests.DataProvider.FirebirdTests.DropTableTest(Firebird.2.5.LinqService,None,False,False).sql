BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

CREATE TABLE TestDropTable
(
	Field Int NOT NULL
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

