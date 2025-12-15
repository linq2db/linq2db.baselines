-- Firebird.3 Firebird3

INSERT INTO "Issue1107TB"
(
	"Id",
	"TestDate"
)
SELECT 0,CAST('2018-01-01' AS timestamp) FROM rdb$database

