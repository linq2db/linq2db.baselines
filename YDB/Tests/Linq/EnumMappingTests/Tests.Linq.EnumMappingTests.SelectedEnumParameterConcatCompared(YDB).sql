-- YDB Ydb
DECLARE gender Int32
SET     gender = 1

SELECT
	p_2.ID as ID,
	p_2.Gender as Gender
FROM
	(
		SELECT
			Unwrap(CAST($gender AS Int32)) as Gender,
			p.PersonID as ID
		FROM
			Person p
		UNION ALL
		SELECT
			Unwrap(CAST($gender AS Int32)) as Gender,
			p_1.PersonID as ID
		FROM
			Person p_1
	) p_2
WHERE
	p_2.Gender = $gender

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

