-- SqlServer.Contained SqlServer.2019

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'John',
	N'Limonadovy',
	N'M'
)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

-- SqlServer.Contained SqlServer.2019

UPDATE
	[Person]
SET
	[FirstName] = N'Johnny'
WHERE
	[Person].[LastName] = N'Limonadovy'

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'Johnny' AND [c_1].[LastName] = N'Limonadovy'

