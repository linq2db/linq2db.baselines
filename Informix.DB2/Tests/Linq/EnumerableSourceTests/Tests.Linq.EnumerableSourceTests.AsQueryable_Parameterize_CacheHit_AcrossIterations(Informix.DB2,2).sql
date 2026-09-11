-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 21
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Integer(4) -- Int32
SET     @Id_2 = 22
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1.Id,
	t1."Data"
FROM
	(
		SELECT @Id::Int AS Id, @Data::NVarChar(255) AS "Data" FROM table(set{1})
		UNION ALL
		SELECT @Id_1::Int, @Data_1::NVarChar(255) FROM table(set{1})
		UNION ALL
		SELECT @Id_2::Int, @Data_2::NVarChar(255) FROM table(set{1})) t1

