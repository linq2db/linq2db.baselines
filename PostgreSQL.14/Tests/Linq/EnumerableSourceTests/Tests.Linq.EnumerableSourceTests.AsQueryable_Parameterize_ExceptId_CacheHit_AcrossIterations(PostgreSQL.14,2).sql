-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Data Text(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 Text(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 Text(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(20,:Data), (21,:Data_1), (22,:Data_2)
	) t1("Id", "Data")

