-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Taxonomy"
FROM
	(
		SELECT
			s."PersonID" as "Key_1"
		FROM
			"Doctor" s
		GROUP BY
			s."PersonID"
	) s_2
		CROSS APPLY (
			SELECT
				s_1."Taxonomy"
			FROM
				"Doctor" s_1
			WHERE
				s_2."Key_1" = s_1."PersonID"
			FETCH NEXT 1 ROWS ONLY
		) t1

