-- YDB Ydb

SELECT
	x.FirstName as FirstName,
	x.ID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	(VALUES
		(1,'Janet'u,3,CAST(NULL AS Text),CAST(NULL AS Text),'M'u),
		(NULL,'Doe'u,4,NULL,NULL,'M'u)
	) x(Patient_PersonID, FirstName, ID, LastName, MiddleName, Gender)
WHERE
	x.Patient_PersonID = 1

