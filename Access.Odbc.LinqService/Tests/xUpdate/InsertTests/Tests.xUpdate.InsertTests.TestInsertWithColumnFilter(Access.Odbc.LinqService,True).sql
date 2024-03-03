﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	([x].[FirstName] = ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @newName NVarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	[Person] [x]
WHERE
	([x].[FirstName] = ?)

