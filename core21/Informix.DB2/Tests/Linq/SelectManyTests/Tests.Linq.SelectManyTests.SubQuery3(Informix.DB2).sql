BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	t2.PersonID,
	t2.FirstName
FROM
	(
		SELECT
			p1.PersonID,
			t1.ID,
			t1.FirstName
		FROM
			Person p1,
			(
				SELECT
					p2.PersonID + 1 as ID,
					p2.FirstName
				FROM
					Person p2
				WHERE
					p2.PersonID = @id
			) t1
	) t2
WHERE
	t2.PersonID = t2.ID - 1

