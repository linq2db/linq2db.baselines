-- YDB Ydb
DECLARE $p Text(1) -- String
SET     $p = 'X'u
DECLARE $p_1 Int32
SET     $p_1 = 1

SELECT
	p.PersonID as PersonID
FROM
	(
		SELECT * FROM Person WHERE (PersonID = $p_1 OR PersonID = $p_1) AND LastName <> $p
	) p

