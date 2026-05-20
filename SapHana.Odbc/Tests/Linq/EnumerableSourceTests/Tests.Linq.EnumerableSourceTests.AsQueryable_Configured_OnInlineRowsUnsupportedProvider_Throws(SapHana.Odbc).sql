-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 1'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 2'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT ? AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT ?, ? FROM DUMMY
		UNION ALL
		SELECT ?, ? FROM DUMMY) "t1"

