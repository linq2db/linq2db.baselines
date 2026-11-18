-- DB2 DB2.LUW DB2LUW
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(VALUES
		(10,CAST(@Data AS NVarChar(255))), (11,CAST(@Data_1 AS NVarChar(255)))
	) "t1"("Id", "Data")

