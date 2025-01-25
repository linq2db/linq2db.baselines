﻿--  PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	t1."Index_1"
FROM
	(
		SELECT
			x."Id",
			ROW_NUMBER() OVER(ORDER BY x."Id") as "Index_1"
		FROM
			"Parents" x
	) t1
WHERE
	t1."Id" = :id
LIMIT 1



