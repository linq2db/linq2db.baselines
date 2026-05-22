-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data VarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 VarChar(6) -- String
SET     @Data_1 = 'Data 1'
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 2
DECLARE @Data_2 VarChar(6) -- String
SET     @Data_2 = 'Data 2'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT CAST(@Id AS Int) AS "Id", CAST(@Data AS VARCHAR(6)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_1 AS Int), CAST(@Data_1 AS VARCHAR(6)) FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_2 AS Int), CAST(@Data_2 AS VARCHAR(6)) FROM rdb$database) "t1"

