-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 10 AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT 11, ? FROM DUMMY) "t1"

