-- Informix.DB2 Informix
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT 20::Int AS Id, @Data::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT 21::Int, @Data_1::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT 22::Int, @Data_2::NVarChar(255) FROM table(set{1})) t1

