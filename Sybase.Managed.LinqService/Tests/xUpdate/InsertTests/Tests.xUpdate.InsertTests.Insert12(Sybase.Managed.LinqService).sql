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

