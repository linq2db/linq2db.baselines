-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 NVarChar(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT :"Id" AS "Id", :"Data" AS "Data" FROM DUMMY
		UNION ALL
		SELECT :"Id_1", :"Data_1" FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @Data NVarChar(8) -- String
SET     @Data = 'Data 100'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 101
DECLARE @Data_1 NVarChar(8) -- String
SET     @Data_1 = 'Data 101'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT :"Id" AS "Id", :"Data" AS "Data" FROM DUMMY
		UNION ALL
		SELECT :"Id_1", :"Data_1" FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

