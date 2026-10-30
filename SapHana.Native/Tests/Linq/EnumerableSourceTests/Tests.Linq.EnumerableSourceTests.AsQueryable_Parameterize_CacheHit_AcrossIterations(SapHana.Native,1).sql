-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 NVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT :"Id" AS "Id", :"Data" AS "Data" FROM DUMMY
		UNION ALL
		SELECT :"Id_1", :"Data_1" FROM DUMMY) "t1"

