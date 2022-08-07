﻿BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName UniVarChar(13) -- String
SET     @Name_FirstName = 'UpdateComplex'
DECLARE @Name_MiddleName UniVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName UniVarChar(5) -- String
SET     @Name_LastName = 'Empty'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value_1 UniChar(1) -- StringFixedLength
SET     @Value_1 = 'O'

UPDATE
	[Person]
SET
	[_].[Gender] = @Value_1
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'UpdateComplex%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

