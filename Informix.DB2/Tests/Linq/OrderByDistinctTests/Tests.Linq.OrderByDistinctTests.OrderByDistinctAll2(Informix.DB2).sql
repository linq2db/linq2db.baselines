-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT SKIP @skip FIRST @take
	r_1.ID,
	r_1.LastName,
	r_1.FirstName
FROM
	(
		SELECT DISTINCT
			r.FirstName,
			r.PersonID as ID,
			r.LastName,
			r.MiddleName,
			r.Gender
		FROM
			Person r
	) r_1
ORDER BY
	r_1.FirstName

-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

