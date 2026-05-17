-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 10 AS "Id", CAST('Data 10' AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 11, CAST('Data 11' AS VARCHAR(7)) FROM rdb$database) "t1"

