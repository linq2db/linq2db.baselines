-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT CAST(@Id AS Int) AS "Id", CAST(@Data AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_1 AS Int), CAST(@Data_1 AS VARCHAR(7)) FROM rdb$database) "t1"

