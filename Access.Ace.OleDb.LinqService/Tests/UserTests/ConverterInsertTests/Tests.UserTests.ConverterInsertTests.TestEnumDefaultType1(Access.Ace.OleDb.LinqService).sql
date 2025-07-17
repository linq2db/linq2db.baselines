﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName VarWChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName VarWChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender VarWChar(1) -- String
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
-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id

