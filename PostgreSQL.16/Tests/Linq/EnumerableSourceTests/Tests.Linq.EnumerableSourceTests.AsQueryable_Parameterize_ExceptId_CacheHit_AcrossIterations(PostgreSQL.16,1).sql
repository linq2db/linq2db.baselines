-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Data Text(7) -- String
SET     @Data = 'Data 10'
DECLARE @Data_1 Text(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(10,:Data), (11,:Data_1)
	) t1("Id", "Data")

