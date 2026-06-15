-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.ID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	(VALUES
		('Janet'u,2,CAST(NULL AS Text),CAST(NULL AS Text),'M'u),
		('Doe'u,3,NULL,NULL,'M'u)
	) t1(FirstName, ID, LastName, MiddleName, Gender)

