﻿BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
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
-- SqlCe (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John0'

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName AND [p].[LastName] = 'Shepard'

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
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
-- SqlCe (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'John1'

SELECT TOP (@take)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @FirstName AND [p].[LastName] = 'Shepard'

BeforeExecute
-- SqlCe

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

