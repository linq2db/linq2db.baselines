﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @str NVarChar(4000) -- String
SET     @str = N'zz'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[TextData]
SET
	[Items1] = [TextData].[Items1] + @str,
	[Items2] = [TextData].[Items2] + @str
WHERE
	[TextData].[Id] >= @id

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]
ORDER BY
	[t1].[Id]

