BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @pattern_1 Text(3) -- String
SET     @pattern_1 = '%1%'
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	t1."FirstName"
FROM
	(
		SELECT
			p."FirstName"
		FROM
			"Person" p
		WHERE
			p."FirstName" LIKE '1'
		UNION ALL
		SELECT
			p_1."FirstName"
		FROM
			"Person" p_1
		WHERE
			Cast(p_1."PersonID" as text) LIKE :pattern_1 ESCAPE '~'
	) t1
LIMIT :take

