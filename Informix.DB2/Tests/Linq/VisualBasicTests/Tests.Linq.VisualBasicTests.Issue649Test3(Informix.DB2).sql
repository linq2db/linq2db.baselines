BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Person.personid,
	a_Person.personname,
	MAX(f.added)
FROM
	activity649 f
		INNER JOIN person649 a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= Mdy(1, 1, 2017)
GROUP BY
	a_Person.personid,
	a_Person.personname

