BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	y."item"
FROM
	Person x
		CROSS JOIN (
			SELECT 'M'::NChar(1) AS "item" FROM table(set{1})
			UNION ALL
			SELECT 'F'::NChar(1) FROM table(set{1})
			UNION ALL
			SELECT 'U'::NChar(1) FROM table(set{1})
			UNION ALL
			SELECT 'O'::NChar(1) FROM table(set{1})) y

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

