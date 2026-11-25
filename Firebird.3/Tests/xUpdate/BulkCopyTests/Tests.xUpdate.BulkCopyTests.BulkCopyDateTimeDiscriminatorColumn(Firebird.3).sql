-- Firebird.3 Firebird3
INSERT INTO "DateTimeDiscriminator"
(
	"Id",
	"TestDate"
)
SELECT 0,TIMESTAMP '2018-01-01 00:00:00.0000' FROM rdb$database

