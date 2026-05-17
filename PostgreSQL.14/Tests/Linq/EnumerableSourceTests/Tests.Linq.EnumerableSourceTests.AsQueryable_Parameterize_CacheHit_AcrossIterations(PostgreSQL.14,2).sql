-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Data Text(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 21
DECLARE @Data_1 Text(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 22
DECLARE @Data_2 Text(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(:Id,:Data), (:Id_1,:Data_1), (:Id_2,:Data_2)
	) t1("Id", "Data")

