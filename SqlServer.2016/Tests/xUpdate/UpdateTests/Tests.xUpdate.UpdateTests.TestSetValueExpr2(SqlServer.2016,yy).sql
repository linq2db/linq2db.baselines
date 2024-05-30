BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TextData]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TextData]', N'U') IS NULL)
	CREATE TABLE [TextData]
	(
		[Id]     Int           NOT NULL,
		[Items1] NVarChar(Max)     NULL,
		[Items2] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [TextData]
(
	[Id],
	[Items1],
	[Items2]
)
VALUES
(1,N'T1',N'Z1'),
(2,N'T2',N'Z2')

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TextData]

