-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data Text(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 Text(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(:Id,:Data), (:Id_1,:Data_1)
	) t1("Id", "Data")

