-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	serv."PersonID"
FROM
	(
		SELECT
			gr."PersonID"
		FROM
			"Patient" gr
		GROUP BY
			gr."PersonID"
	) serv
		INNER JOIN "Person" a_Person ON serv."PersonID" = a_Person."PersonID"
WHERE
	a_Person."PersonID" = 1

