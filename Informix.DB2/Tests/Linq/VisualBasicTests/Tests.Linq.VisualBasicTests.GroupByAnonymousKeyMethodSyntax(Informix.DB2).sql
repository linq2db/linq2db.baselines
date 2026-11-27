-- Informix.DB2 Informix
SELECT
	a_Person.personid,
	a_Person.personname,
	MAX(f.added)
FROM
	vb_activity f
		INNER JOIN vb_activity_person a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= Mdy(1, 1, 2017)
GROUP BY
	a_Person.personid,
	a_Person.personname

