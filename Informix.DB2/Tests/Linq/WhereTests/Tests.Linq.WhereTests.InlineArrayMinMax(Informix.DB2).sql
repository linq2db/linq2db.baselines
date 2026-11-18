-- Informix.DB2 Informix
SELECT
	p.PersonID
FROM
	Person p
WHERE
	(
		SELECT
			MAX(t1."item")
		FROM
			(
				SELECT p.PersonID::Int AS "item" FROM table(set{1})
				UNION ALL
				SELECT 2::Int FROM table(set{1})) t1
	) = 2

-- Informix.DB2 Informix
SELECT
	p.PersonID
FROM
	Person p
WHERE
	(
		SELECT
			MIN(t1."item")
		FROM
			(
				SELECT p.PersonID::Int AS "item" FROM table(set{1})
				UNION ALL
				SELECT 2::Int FROM table(set{1})) t1
	) = 2

