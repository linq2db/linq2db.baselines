-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 21'
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 22'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 20 AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT 21, ? FROM DUMMY
		UNION ALL
		SELECT 22, ? FROM DUMMY) "t1"

