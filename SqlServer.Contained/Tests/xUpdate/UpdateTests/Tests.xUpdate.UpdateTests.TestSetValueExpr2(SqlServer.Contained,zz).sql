BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TextData]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[TextData]', N'U') IS NULL)
	CREATE TABLE [TextData]
	(
		[Id]     Int           NOT NULL,
		[Items1] NVarChar(Max)     NULL,
		[Items2] NVarChar(Max)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
DECLARE @str NVarChar(4000) -- String
SET     @str = N'zz'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[_]
SET
	[_].[Items1] = [_].[Items1] + @str,
	[_].[Items2] = [_].[Items2] + @str
FROM
	[TextData] [_]
WHERE
	[_].[Id] >= @id

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Items1],
	[t1].[Items2]
FROM
	[TextData] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [TextData]

