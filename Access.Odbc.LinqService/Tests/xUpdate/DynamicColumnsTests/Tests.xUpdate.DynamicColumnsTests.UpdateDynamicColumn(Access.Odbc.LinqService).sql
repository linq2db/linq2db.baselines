﻿BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[Person] [c_1]
SET
	[c_1].[FirstName] = 'Johnny'
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

