BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

/* My Test */
DROP TABLE "TestTable"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

