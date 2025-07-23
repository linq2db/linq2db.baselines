BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @str NVarChar(4000) -- String
SET     @str = N'zz'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[TextData]
SET
	[Items1] = Coalesce([TextData].[Items1], N'') + Coalesce(@str, N''),
	[Items2] = Coalesce([TextData].[Items2], N'') + Coalesce(@str, N'')
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

