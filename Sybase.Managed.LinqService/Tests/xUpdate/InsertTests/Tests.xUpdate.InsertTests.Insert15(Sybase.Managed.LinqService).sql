BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName UniVarChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert15%' ESCAPE '~'

