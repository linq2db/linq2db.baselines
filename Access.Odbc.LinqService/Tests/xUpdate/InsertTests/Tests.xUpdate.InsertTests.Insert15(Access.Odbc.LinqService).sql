﻿BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert15%'

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
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

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert15%'

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Insert15%'

