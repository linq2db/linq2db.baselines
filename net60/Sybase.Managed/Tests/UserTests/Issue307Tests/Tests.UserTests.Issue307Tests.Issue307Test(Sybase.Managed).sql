﻿BeforeExecute
-- Sybase.Managed Sybase

sp_chgattribute Person, 'identity_burn_max', 0, '4'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName UniVarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName UniVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName UniVarChar(11) -- String
SET     @LastName = 'LastName307'

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
	@FirstName,
	@MiddleName,
	@LastName
)

SELECT @@IDENTITY

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

