BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3807Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue3807Table]', N'U') IS NULL)
	CREATE TABLE [Issue3807Table]
	(
		[Id]          Int            NOT NULL,
		[ArrayString] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3807Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Issue3807Table]
(
	[Id],
	[ArrayString]
)
VALUES
(1,N'one,two,three'),
(2,N'one,three'),
(3,NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','

SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[a].[ArrayString]
		FROM
			[Issue3807Table] [a]
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], @p) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
ORDER BY
	[a].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue3807Table]

