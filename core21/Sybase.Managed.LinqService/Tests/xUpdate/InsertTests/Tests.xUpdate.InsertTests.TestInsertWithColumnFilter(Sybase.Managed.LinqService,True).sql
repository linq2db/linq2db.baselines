﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
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
-- Sybase.Managed Sybase
DECLARE @FirstName_1 UniVarChar(18) -- String
SET     @FirstName_1 = 'InsertColumnFilter'

SELECT TOP 1 
	[x].[FirstName], 
	[x].[PersonID], 
	[x].[LastName], 
	[x].[MiddleName], 
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @newName UniVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM [Person]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

