﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

BeforeExecute
-- Firebird4 Firebird

DROP TABLE TestDropTable

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE TestDropTable
(
	Field Int NOT NULL
)

BeforeExecute
-- Firebird4 Firebird

DROP TABLE TestDropTable

