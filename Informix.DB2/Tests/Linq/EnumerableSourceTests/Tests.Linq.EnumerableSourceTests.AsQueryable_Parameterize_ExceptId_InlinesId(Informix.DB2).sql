-- Informix.DB2 Informix
DECLARE @Data VarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 VarChar(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT 7777::Int AS Id, @Data::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT 7778::Int, @Data_1::NVarChar(255) FROM table(set{1})) t1

