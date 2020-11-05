BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as c1
		FROM
			(
				SELECT
					'test' || a_Patient.Diagnosis as Key_1
				FROM
					Person selectParam
						LEFT JOIN Patient a_Patient ON selectParam.PersonID = a_Patient.PersonID
			) t1
		GROUP BY
			t1.Key_1
	) t2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

