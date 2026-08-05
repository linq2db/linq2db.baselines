-- Firebird.3 Firebird3
DECLARE @Data VarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 VarChar(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 7777 AS "Id", CAST(@Data AS VARCHAR(9)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT 7778, CAST(@Data_1 AS VARCHAR(9)) FROM rdb$database) "t1"

