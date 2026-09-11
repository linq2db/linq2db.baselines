-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id Int -- Int32
SET     @Id = 21
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 21'
DECLARE @Id Int -- Int32
SET     @Id = 22
DECLARE @Data NVarChar(7) -- String
SET     @Data = 'Data 22'

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

