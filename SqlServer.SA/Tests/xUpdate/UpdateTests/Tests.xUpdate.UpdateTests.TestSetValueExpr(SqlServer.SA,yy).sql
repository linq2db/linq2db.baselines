-- SqlServer.SA SqlServer.2019
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

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]

