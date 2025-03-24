﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	N'one',
	N'two',
	N'text'
)

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Text],
	[t1].[FistName] + N' ' + [t1].[LastName]
FROM
	[Issue3323Table] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	[t2].[FistName] + N' ' + [t2].[LastName]
FROM
	[Issue3323Table] [t2]

