-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			NULL::BigInt as Value_1
		FROM
			Person r
	) t1

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			2147483648 as Value_1
		FROM
			Person r
	) t1

