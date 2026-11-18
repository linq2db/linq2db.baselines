-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(VALUES
		(CAST(@Id AS Int),CAST(@Data AS NVarChar(255))),
		(CAST(@Id_1 AS Int),CAST(@Data_1 AS NVarChar(255)))
	) "t1"("Id", "Data")

