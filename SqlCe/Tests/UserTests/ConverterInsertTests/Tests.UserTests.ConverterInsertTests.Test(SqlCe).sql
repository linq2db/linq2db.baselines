﻿BeforeExecute
--  SqlCe

ALTER TABLE Person ALTER COLUMN PersonID IDENTITY(5,1)

BeforeExecute
--  SqlCe
DECLARE @FirstName NVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName NVarChar(3) -- String
SET     @MiddleName = '789'
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
--  SqlCe

SELECT @@IDENTITY

BeforeExecute
--  SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id

BeforeExecute
--  SqlCe
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP (1)
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id

