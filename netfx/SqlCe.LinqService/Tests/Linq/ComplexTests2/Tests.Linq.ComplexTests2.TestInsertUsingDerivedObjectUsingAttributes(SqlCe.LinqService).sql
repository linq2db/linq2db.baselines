﻿BeforeExecute
-- SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'U'

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
SET     @take = 1

SELECT TOP (@take)
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- SqlCe
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'U'
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[Person].[FirstName] = @FirstName,
	[Person].[LastName] = @LastName,
	[Person].[MiddleName] = @MiddleName,
	[Person].[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @ID

