BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TextData]', N'U') IS NOT NULL)
	DROP TABLE [TextData]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TextData]', N'U') IS NULL)
	CREATE TABLE [TextData]
	(
		[Id]     Int           NOT NULL,
		[Items1] NVarChar(Max)     NULL,
		[Items2] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014
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

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TextData]', N'U') IS NOT NULL)
	DROP TABLE [TextData]

