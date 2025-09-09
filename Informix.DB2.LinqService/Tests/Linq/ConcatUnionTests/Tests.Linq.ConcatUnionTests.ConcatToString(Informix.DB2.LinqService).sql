BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 10

SELECT FIRST @take
	t1.FirstName
FROM
	(
		SELECT
			p.FirstName
		FROM
			Person p
		WHERE
			p.FirstName LIKE '1'
		UNION ALL
		SELECT
			p_1.FirstName
		FROM
			Person p_1
		WHERE
			To_Char(p_1.PersonID) LIKE '%1%' ESCAPE '~'
	) t1

