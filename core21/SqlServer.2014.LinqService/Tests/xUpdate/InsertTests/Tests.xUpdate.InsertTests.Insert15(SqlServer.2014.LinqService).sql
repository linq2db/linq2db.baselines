BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert15%'

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = N'M'
DECLARE @Name_FirstName NVarChar(4000) -- String
SET     @Name_FirstName = N'Insert15'
DECLARE @Name_MiddleName NVarChar(4000) -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(4000) -- String
SET     @Name_LastName = N'Insert15'

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
-- SqlServer.2014 SqlServer.2012

SELECT 
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert15%'

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Insert15%'

