BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

BeforeExecute
-- Firebird

DROP TABLE TestDropTable

BeforeExecute
-- Firebird

CREATE TABLE TestDropTable
(
	Field Int NOT NULL
)

BeforeExecute
-- Firebird

DROP TABLE TestDropTable

