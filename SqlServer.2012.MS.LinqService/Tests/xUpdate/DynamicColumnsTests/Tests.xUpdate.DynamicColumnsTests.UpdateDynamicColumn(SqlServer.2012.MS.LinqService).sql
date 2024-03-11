BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Limonadovy'
DECLARE @Gender NChar(1) -- StringFixedLength
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

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Johnny'

UPDATE
	[Person]
SET
	[FirstName] = @FirstName
WHERE
	[Person].[LastName] = N'Limonadovy'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'Johnny' AND [c_1].[LastName] = N'Limonadovy'

