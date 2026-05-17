-- SQLite.MS SQLite

SELECT
	[x].[FirstName],
	[x].[ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	(
		SELECT NULL [Patient_PersonID], NULL [FirstName], NULL [ID], NULL [LastName], NULL [MiddleName], NULL [Gender] WHERE 1 = 0
		UNION ALL
		VALUES
			(1,'Janet',3,NULL,NULL,'M'), (NULL,'Doe',4,NULL,NULL,'M')
		) [x]
WHERE
	[x].[Patient_PersonID] = 1

