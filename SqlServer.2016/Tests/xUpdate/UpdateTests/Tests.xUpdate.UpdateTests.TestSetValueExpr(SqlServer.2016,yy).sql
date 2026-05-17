-- SqlServer.2016
DECLARE @str NVarChar(4000) -- String
SET     @str = N'yy'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[TextData]
SET
	[TextData].[Items1] += @str,
	[TextData].[Items2] += @str
WHERE
	[TextData].[Id] >= @id

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]

