-- YDB Ydb
DECLARE $pattern Text(3) -- String
SET     $pattern = '%1%'u
DECLARE $take Int32
SET     $take = 10

SELECT
	t1.FirstName as FirstName
FROM
	(
		SELECT
			p.FirstName as FirstName
		FROM
			Person p
		WHERE
			p.FirstName LIKE '1'u
		UNION ALL
		SELECT
			p_1.FirstName as FirstName
		FROM
			Person p_1
		WHERE
			Unwrap(CAST(p_1.PersonID AS Text)) LIKE $pattern ESCAPE '~'s
	) t1
LIMIT $take

