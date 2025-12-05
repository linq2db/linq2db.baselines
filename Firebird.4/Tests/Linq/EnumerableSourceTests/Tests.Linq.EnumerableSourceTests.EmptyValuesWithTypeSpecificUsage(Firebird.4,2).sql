-- Firebird.4 Firebird4

SELECT
	"g_1"."Id",
	SUM("g_1"."Id")
FROM
	(SELECT CAST(NULL AS Int) "Id" FROM rdb$database WHERE 1 = 0) "g_1"
GROUP BY
	"g_1"."Id"

