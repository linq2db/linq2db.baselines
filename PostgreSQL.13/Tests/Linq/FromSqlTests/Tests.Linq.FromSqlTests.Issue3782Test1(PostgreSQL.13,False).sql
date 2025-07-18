﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.value
FROM
	(
		
			SELECT CASE
				WHEN EXISTS (
					SELECT 1
					FROM information_schema.tables
					WHERE table_name = 'Person'
				)
				THEN true
				ELSE false
			END AS result
	) t1(value)
LIMIT 1

