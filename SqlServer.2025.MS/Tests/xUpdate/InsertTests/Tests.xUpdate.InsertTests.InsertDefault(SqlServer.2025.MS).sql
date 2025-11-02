-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [Person]
(
	[FirstName],
	[MiddleName],
	[LastName],
	[Gender]
)
VALUES
(
	N'InsertDefault',
	DEFAULT,
	N'InsertDefault',
	'M'
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = N'InsertDefault'

