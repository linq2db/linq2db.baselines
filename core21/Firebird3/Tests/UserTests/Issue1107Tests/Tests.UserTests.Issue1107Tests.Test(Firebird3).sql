BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1107TB"
(
	"Id"       Int       NOT NULL,
	"TestDate" TimeStamp NOT NULL,

	CONSTRAINT "PK_Issue1107TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
SELECT 0,CAST('2018-01-01' AS timestamp) FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1107TB"

