﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1."SKUPAJ")
FROM
	(
		SELECT
			Floor(Extract(year From CASE
				WHEN n."DATUM" IS NOT NULL THEN n."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n."DATUM" IS NOT NULL THEN n."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Month_1",
			n."SKUPAJ"
		FROM
			"Issue3761Table" n
		WHERE
			n."DATUM" < '2019-01-01'::date
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"

