-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Taxonomy"
FROM
	(
		SELECT DISTINCT
			s."PersonID"
		FROM
			"Doctor" s
	) s_2
		CROSS APPLY (
			SELECT
				s_1."Taxonomy"
			FROM
				"Doctor" s_1
			WHERE
				s_2."PersonID" = s_1."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) t1

