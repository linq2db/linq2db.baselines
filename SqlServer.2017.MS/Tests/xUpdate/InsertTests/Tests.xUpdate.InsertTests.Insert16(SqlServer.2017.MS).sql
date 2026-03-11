-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

-- SqlServer.2017.MS SqlServer.2017
DECLARE @name Int -- Int32
SET     @name = 8
DECLARE @idx Int -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	N'Insert16',
	CAST(@name + @idx AS NVarChar(11)),
	'M'
)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

-- SqlServer.2017.MS SqlServer.2017

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

