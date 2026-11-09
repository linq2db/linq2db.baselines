-- YDB Ydb
DECLARE gender Text(1) -- AnsiString
SET     gender = 'M'u

SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	$gender = CASE
		WHEN p.PersonID > 2 THEN 'M'u
		ELSE 'F'u
	END
ORDER BY
	p.PersonID

