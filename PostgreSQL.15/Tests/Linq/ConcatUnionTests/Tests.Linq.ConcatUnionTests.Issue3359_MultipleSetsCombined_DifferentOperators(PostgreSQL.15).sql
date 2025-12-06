-- PostgreSQL.15 PostgreSQL

SELECT
	t2."FirstName",
	t2."LastName"
FROM
	(
		SELECT
			p."FirstName" || 'q1' as "FirstName",
			p."LastName"
		FROM
			"Person" p
		UNION
		SELECT
			t1."FirstName",
			t1."LastName"
		FROM
			(
				SELECT
					p_1."FirstName" || 'q2' as "FirstName",
					p_1."LastName"
				FROM
					"Person" p_1
				UNION ALL
				SELECT
					p_2."FirstName" || 'q3' as "FirstName",
					p_2."LastName"
				FROM
					"Person" p_2
			) t1
	) t2
INTERSECT
SELECT
	t4."FirstName",
	t4."LastName"
FROM
	(
		SELECT
			t3."FirstName",
			t3."LastName"
		FROM
			(
				SELECT
					p_3."FirstName" || 'q4' as "FirstName",
					p_3."LastName"
				FROM
					"Person" p_3
				INTERSECT ALL
				SELECT
					p_4."FirstName" || 'q5' as "FirstName",
					p_4."LastName"
				FROM
					"Person" p_4
			) t3
		EXCEPT
		SELECT
			p_5."FirstName" || 'q6' as "FirstName",
			p_5."LastName"
		FROM
			"Person" p_5
	) t4

