BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Update14'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'whatever'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @name NVarChar(4000) -- String
SET     @name = N'Update14'
DECLARE @idx Int -- Int32
SET     @idx = 4

UPDATE
	[_]
SET
	[_].[LastName] = Convert(NVarChar(11), Len(@name) + @idx)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Update14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Update14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE N'Update14%' ESCAPE N'~'

