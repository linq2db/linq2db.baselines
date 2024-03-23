BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'The Dynamic'
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = N'John' AND [c_1].[LastName] = N'The Dynamic'

