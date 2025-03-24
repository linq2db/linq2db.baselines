﻿BeforeExecute
--  Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TESTDROPTABLE')) THEN
		EXECUTE STATEMENT 'DROP TABLE TestDropTable';
END

BeforeExecute
--  Firebird.5 Firebird4

DROP TABLE TestDropTable

BeforeExecute
--  Firebird.5 Firebird4

CREATE TABLE TestDropTable
(
	Field Int NOT NULL
)

BeforeExecute
--  Firebird.5 Firebird4

DROP TABLE TestDropTable

