BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "TableWithData"
(
	"Id"       Int                                   NOT NULL,
	"Value"    Int                                   NOT NULL,
	"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

