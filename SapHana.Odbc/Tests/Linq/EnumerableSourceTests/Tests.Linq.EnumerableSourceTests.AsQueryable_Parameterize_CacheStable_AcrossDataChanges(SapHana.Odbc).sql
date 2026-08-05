-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Data NVarChar(6) -- String
SET     @Data = 'Data 1'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT ? AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT ?, ? FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @Data NVarChar(8) -- String
SET     @Data = 'Data 100'
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Data NVarChar(8) -- String
SET     @Data = 'Data 101'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT ? AS "Id", ? AS "Data" FROM DUMMY
		UNION ALL
		SELECT ?, ? FROM DUMMY) "t1"
ORDER BY
	"t1"."Id"

