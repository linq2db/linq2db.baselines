-- Informix.DB2 Informix
SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = CAST(NULL AS INT)
			) t1("value")
		WHERE
			p.PersonID = t1."value"
	)

-- Informix.DB2 Informix
DECLARE @In Integer(4) -- Int32
SET     @In = 1

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = CAST(@In AS INT)
			) t1("value")
		WHERE
			p.PersonID = t1."value"
	)

-- Informix.DB2 Informix
SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT PersonID AS "value" FROM Person WHERE PersonID = CAST(NULL AS INT)
			) t1("value")
		WHERE
			p.PersonID = t1."value"
	)

