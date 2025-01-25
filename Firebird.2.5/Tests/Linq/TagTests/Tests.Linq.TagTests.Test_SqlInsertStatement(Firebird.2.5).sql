BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestTable"
			(
				"Id" Int NOT NULL,
				"Fd" Int,

				CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

/* My Test */
INSERT INTO "TestTable"
(
	"Id"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

