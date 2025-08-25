﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

INSERT INTO [Issue3323Table]
(
	[Id],
	[FirstName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[r].[Id],
	[r].[FirstName] + ' ' + [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FirstName] + ' ' + [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

