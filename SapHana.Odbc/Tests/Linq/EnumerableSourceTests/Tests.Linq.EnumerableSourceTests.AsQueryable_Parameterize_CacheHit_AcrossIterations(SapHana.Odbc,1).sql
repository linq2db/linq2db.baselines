-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT ? AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT ?, ? FROM DUMMY) "t1"

