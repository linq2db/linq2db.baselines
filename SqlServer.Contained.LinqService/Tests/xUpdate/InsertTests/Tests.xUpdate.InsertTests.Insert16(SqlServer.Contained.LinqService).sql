BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @name NVarChar(4000) -- String
SET     @name = N'Insert16'
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
	CAST(Len(@name) + @idx AS NVarChar(Max)),
	'M'
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

