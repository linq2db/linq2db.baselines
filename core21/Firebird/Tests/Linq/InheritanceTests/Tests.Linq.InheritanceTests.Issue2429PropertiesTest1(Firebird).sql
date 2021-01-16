BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BaseTable"
			(
				"Value" Int NOT NULL,
				"Id"    Int NOT NULL,

				CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "BaseTable"
(
	"Value",
	"Id"
)
SELECT 100,1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BaseTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BaseTable"';
END

