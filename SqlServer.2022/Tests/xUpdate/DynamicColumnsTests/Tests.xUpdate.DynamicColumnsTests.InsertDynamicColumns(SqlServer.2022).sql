-- SqlServer.2022

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'The Dynamic',
	N'M'
)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'John' AND [c_1].[LastName] = N'The Dynamic'

