BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3807Table]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue3807Table]', N'U') IS NULL)
	CREATE TABLE [Issue3807Table]
	(
		[Id]          Int            NOT NULL,
		[ArrayString] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue3807Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','
DECLARE @p_1 NChar(1) -- StringFixedLength
SET     @p_1 = N','

SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[r].[ArrayString]
		FROM
			[Issue3807Table] [r]
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					[STRING_SPLIT]([r].[ArrayString], @p) [i]
				WHERE
					[i].[value] = N'two'
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], @p_1) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','

SELECT
	[r].[Id],
	[r].[ArrayString]
FROM
	[Issue3807Table] [r]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[STRING_SPLIT]([r].[ArrayString], @p) [i]
		WHERE
			[i].[value] = N'two'
	)
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue3807Table]

