-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT @Id::Int AS Id, @Data::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT @Id_1::Int, @Data_1::NVarChar(255) FROM table(set{1})) t1

