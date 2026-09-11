-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data NVarChar(9) -- String
SET     @Data = 'Data 7778'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT 7777 AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT 7778, ? FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

