BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender UniChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM [Person]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

