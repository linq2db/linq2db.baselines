﻿BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @FirstName UniVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName UniVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

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

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

