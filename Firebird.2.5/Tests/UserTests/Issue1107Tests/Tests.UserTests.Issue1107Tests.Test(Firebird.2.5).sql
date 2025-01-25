BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1107TB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1107TB"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1107TB')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1107TB"
			(
				"Id"       Int       NOT NULL,
				"TestDate" TimeStamp NOT NULL,

				CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
SELECT 0,CAST('2018-01-01' AS timestamp) FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1107TB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1107TB"';
END

