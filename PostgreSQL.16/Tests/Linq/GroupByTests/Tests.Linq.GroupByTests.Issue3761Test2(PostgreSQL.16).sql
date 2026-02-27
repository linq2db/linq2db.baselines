-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			n."DATUM" < make_timestamp(2019, 1, 1, 0, 0, 0)
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"
UNION ALL
SELECT
	t2."Year_1",
	t2."Month_1",
	SUM(t2."SKUPAJ")
FROM
	(
		SELECT
			Floor(Extract(year From CASE
				WHEN n_1."DATUM" IS NOT NULL THEN n_1."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Year_1",
			Floor(Extract(month From CASE
				WHEN n_1."DATUM" IS NOT NULL THEN n_1."DATUM"
				ELSE '0001-01-01'::date
			END))::Int as "Month_1",
			n_1."SKUPAJ"
		FROM
			"Issue3761Table" n_1
		WHERE
			n_1."DATUM" >= make_timestamp(2019, 1, 1, 0, 0, 0)
	) t2
GROUP BY
	t2."Year_1",
	t2."Month_1"

