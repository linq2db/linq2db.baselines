-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Data Text(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 Text(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(:Id,:Data), (:Id_1,:Data_1)
	) t1("Id", "Data")
ORDER BY
	t1."Id"

