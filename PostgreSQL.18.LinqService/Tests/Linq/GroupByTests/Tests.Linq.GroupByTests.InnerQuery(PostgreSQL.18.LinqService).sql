BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Taxonomy"
FROM
	(
		SELECT
			s."PersonID"
		FROM
			"Doctor" s
		GROUP BY
			s."PersonID"
	) s_2
		INNER JOIN LATERAL (
			SELECT
				s_1."Taxonomy"
			FROM
				"Doctor" s_1
			WHERE
				s_2."PersonID" = s_1."PersonID"
			LIMIT 1
		) t1 ON 1=1

