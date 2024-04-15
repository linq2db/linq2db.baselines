BeforeExecute
-- SqlServer.2019

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2019

DELETE [_]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

