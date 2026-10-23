-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 21
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 22
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	"t1"."Id",
	"t1"."Data"
FROM
	(
		SELECT CAST(@Id AS Int) AS "Id", CAST(@Data AS VARCHAR(7)) AS "Data" FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_1 AS Int), CAST(@Data_1 AS VARCHAR(7)) FROM rdb$database
		UNION ALL
		SELECT CAST(@Id_2 AS Int), CAST(@Data_2 AS VARCHAR(7)) FROM rdb$database) "t1"

