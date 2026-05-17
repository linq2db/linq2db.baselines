-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 20 AS "Id", CAST('Data 20' AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 21, CAST('Data 21' AS VARCHAR(7)) FROM rdb$database
		UNION ALL
		SELECT 22, CAST('Data 22' AS VARCHAR(7)) FROM rdb$database) "t1"

