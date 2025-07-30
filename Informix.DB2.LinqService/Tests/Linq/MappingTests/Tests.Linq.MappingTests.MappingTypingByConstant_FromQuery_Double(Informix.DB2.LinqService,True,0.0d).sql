BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			0 as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			3147483648 as Value_1
		FROM
			Person r
	) t1

