﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 0
DECLARE @id2 Int -- Int32
SET     @id2 = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	?,
	'abc'
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @i Int -- Int32
SET     @i = 2
DECLARE @id2 Int -- Int32
SET     @id2 = 5

UPDATE
	[Patient] [t1]
SET
	[t1].[Diagnosis] = IIF([t1].[Diagnosis] IS NOT NULL, CStr(Len([t1].[Diagnosis]) + ?), NULL)
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 5

SELECT TOP 2
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = ?

