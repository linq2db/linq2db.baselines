﻿BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender NVarChar(1) -- String
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
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT TOP (1)
	[x].[FirstName],
	[x].[PersonID] as [ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT TOP (1)
	[x].[FirstName],
	[x].[PersonID] as [ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

