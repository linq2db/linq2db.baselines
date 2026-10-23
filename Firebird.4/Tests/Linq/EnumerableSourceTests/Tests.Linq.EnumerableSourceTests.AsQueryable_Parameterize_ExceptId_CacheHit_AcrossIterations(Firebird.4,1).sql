-- Firebird.4 Firebird4
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 10 AS "Id", CAST(@Data AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 11, CAST(@Data_1 AS VARCHAR(7)) FROM rdb$database) "t1"

