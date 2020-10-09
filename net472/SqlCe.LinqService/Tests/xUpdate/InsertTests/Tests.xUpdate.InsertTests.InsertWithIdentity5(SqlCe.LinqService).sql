BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'

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
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @FirstName_1 NVarChar(5) -- String
SET     @FirstName_1 = 'John0'

SELECT TOP (@take) 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName_1 AND [p].[LastName] = 'Shepard'

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'

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
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @FirstName_1 NVarChar(5) -- String
SET     @FirstName_1 = 'John1'

SELECT TOP (@take) 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName_1 AND [p].[LastName] = 'Shepard'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

