-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data VarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 VarChar(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT CAST(@Id AS Int) AS "Id", CAST(@Data AS VARCHAR(6)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_1 AS Int), CAST(@Data_1 AS VARCHAR(6)) FROM rdb$database) "t1"
ORDER BY
	"t1"."Id"

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @Data VarChar(8) -- String
SET     @Data = 'Data 100'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 101
DECLARE @Data_1 VarChar(8) -- String
SET     @Data_1 = 'Data 101'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT CAST(@Id AS Int) AS "Id", CAST(@Data AS VARCHAR(8)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_1 AS Int), CAST(@Data_1 AS VARCHAR(8)) FROM rdb$database) "t1"
ORDER BY
	"t1"."Id"

