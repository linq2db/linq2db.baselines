-- PostgreSQL.13 PostgreSQL
DECLARE @p Text(6) -- String
SET     @p = 'Person'

SELECT
	t1.value
FROM
	(
		
			SELECT CASE
				WHEN EXISTS (
					SELECT 1
					FROM information_schema.tables
					WHERE table_name = :p
				)
				THEN true
				ELSE false
			END AS result
	) t1(value)
LIMIT 1

