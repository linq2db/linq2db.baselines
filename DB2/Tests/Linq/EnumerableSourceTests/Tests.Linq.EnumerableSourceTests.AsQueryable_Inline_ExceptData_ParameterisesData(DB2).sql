-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 VarChar(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(VALUES
		(7777,CAST(@Data AS NVarChar(255))),
		(7778,CAST(@Data_1 AS NVarChar(255)))
	) "t1"("Id", "Data")
ORDER BY
	"t1"."Id"

