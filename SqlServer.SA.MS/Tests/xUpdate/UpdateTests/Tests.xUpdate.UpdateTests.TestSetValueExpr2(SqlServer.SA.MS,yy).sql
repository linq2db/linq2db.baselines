BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @str NVarChar(4000) -- String
SET     @str = N'yy'
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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]
ORDER BY
	[t1].[Id]

