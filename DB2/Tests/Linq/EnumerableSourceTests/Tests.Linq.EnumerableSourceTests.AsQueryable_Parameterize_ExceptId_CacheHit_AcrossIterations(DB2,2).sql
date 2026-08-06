-- DB2 DB2.LUW DB2LUW
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
	(VALUES
		(20,CAST(@Data AS NVarChar(255))), (21,CAST(@Data_1 AS NVarChar(255))),
		(22,CAST(@Data_2 AS NVarChar(255)))
	) "t1"("Id", "Data")

