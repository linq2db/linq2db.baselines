BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue1107TB"
(
	"Id"       Int       NOT NULL,
	"TestDate" TimeStamp NOT NULL,

	CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
SELECT 0,CAST('2018-01-01' AS timestamp) FROM rdb$database

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1107TB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1107TB"';
END

