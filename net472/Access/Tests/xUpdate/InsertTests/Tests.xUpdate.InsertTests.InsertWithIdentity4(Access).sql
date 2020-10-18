﻿BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName VarWChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
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
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @p1 VarWChar(5) -- String
SET     @p1 = 'John0'

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p1 AND [p].[LastName] = 'Shepard'

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName VarWChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
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
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
DECLARE @p1 VarWChar(5) -- String
SET     @p1 = 'John1'

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @p1 AND [p].[LastName] = 'Shepard'

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

