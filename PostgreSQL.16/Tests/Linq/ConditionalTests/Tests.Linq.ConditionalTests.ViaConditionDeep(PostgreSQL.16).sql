﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."StringProp" = '1' OR x."StringProp" IS NULL,
	CASE
		WHEN x."StringProp" = '2' THEN True
		ELSE False
	END,
	x."StringProp",
	1,
	x."StringProp" || '2',
	2
FROM
	"ConditionalData" x
WHERE
	CASE
		WHEN x."StringProp" = '1' OR x."StringProp" IS NULL THEN '2'
		WHEN x."StringProp" = '2' THEN x."StringProp"
		ELSE x."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN x."StringProp" = '1' AND x."StringProp" IS NOT NULL OR x."StringProp" IS NULL
			THEN NULL
		WHEN x."StringProp" = '2' AND x."StringProp" IS NOT NULL
			THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."StringProp"
FROM
	"ConditionalData" t1

