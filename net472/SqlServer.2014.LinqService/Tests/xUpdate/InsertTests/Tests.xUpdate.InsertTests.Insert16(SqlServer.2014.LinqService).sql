BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
	Convert(NVarChar(11), Len(@name) + @idx),
	N'M'
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert16%' ESCAPE N'~'

