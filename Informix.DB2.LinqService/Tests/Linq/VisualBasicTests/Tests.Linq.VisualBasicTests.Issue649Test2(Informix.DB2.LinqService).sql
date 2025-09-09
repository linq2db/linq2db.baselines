BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	a_Person.personid,
	a_Person.personname,
	MAX(VBIt.added)
FROM
	activity649 VBIt
		INNER JOIN person649 a_Person ON VBIt.personid = a_Person.personid
WHERE
	VBIt.added >= Mdy(1, 1, 2017)
GROUP BY
	a_Person.personid,
	a_Person.personname

