-- Firebird.5 Firebird4
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 20 AS "Id", CAST(@Data AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 21, CAST(@Data_1 AS VARCHAR(7)) FROM rdb$database
		UNION ALL
		SELECT 22, CAST(@Data_2 AS VARCHAR(7)) FROM rdb$database) "t1"

