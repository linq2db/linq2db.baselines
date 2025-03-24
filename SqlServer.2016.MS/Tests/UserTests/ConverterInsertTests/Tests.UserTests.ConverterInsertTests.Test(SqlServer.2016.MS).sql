﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

DBCC CHECKIDENT ('Person', RESEED, 4)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'123'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'456'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'789'
DECLARE @Gender NVarChar(4000) -- String
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

SELECT SCOPE_IDENTITY()

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
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
--  SqlServer.2016.MS SqlServer.2016
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

