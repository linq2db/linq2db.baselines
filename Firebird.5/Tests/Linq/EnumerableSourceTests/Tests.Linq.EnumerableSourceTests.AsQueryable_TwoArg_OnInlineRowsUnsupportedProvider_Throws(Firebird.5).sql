-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 0 AS "Id", CAST('Data 0' AS VARCHAR(6)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 1, CAST('Data 1' AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT 2, CAST('Data 2' AS VARCHAR(6)) FROM rdb$database) "t1"

