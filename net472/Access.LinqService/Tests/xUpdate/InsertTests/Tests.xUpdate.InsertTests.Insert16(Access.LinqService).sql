﻿BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access AccessOleDb
DECLARE @name VarWChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	CStr(Len(@name) + @idx),
	'M'
)

BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

