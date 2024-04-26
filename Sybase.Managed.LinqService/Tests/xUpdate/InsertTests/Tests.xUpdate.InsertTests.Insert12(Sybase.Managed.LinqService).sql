BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'LastName'
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
	@LastName,
	@Gender
)

