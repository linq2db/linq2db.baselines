-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data Text(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 Text(6) -- String
SET     @Data_1 = 'Data 1'
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 2
DECLARE @Data_2 Text(6) -- String
SET     @Data_2 = 'Data 2'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(:Id,:Data), (:Id_1,:Data_1), (:Id_2,:Data_2)
	) t1("Id", "Data")

