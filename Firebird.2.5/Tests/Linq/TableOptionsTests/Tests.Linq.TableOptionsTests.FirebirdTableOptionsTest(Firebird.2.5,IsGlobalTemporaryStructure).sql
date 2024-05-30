BeforeExecute
-- Firebird.2.5 Firebird

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

