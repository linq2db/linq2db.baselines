BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
DECLARE @idx Int -- Int32
SET     @idx = 4

UPDATE
	[Person]
SET
	[LastName] = CAST(8 + @idx AS NVarChar(11))
WHERE
	[Person].[FirstName] LIKE N'Update14%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE N'Update14%' ESCAPE N'~'

