BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @name UniVarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	Convert(NVarChar(11), Len(@name) + @idx),
	'M'
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

