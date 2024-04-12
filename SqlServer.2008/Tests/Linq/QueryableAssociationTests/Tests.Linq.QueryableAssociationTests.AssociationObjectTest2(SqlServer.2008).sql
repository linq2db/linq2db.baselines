BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeTable]', N'U') IS NOT NULL)
	DROP TABLE [SomeTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeTable]', N'U') IS NULL)
	CREATE TABLE [SomeTable]
	(
		[Id]       Int            NOT NULL,
		[OwnerStr] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [SomeTable]
(
	[Id],
	[OwnerStr]
)
VALUES
(1,N'Own_1'),
(2,N'Own_2'),
(3,N'Own_3'),
(4,N'Own_4'),
(5,N'Own_5'),
(6,N'Own_6'),
(7,N'Own_7'),
(8,N'Own_8'),
(9,N'Own_9'),
(10,N'Own_10')

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeOtherEntity]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NULL)
	CREATE TABLE [SomeOtherEntity]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[StrValue]
)
VALUES
(1,N'Str_1'),
(2,N'Str_2'),
(3,N'Str_3'),
(4,N'Str_4'),
(5,N'Str_5'),
(6,N'Str_6'),
(7,N'Str_7'),
(8,N'Str_8'),
(9,N'Str_9'),
(10,N'Str_10')

BeforeExecute
-- SqlServer.2008


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2008

CREATE FUNCTION fn_SomeFunction (@id AS INT)
RETURNS TABLE
AS RETURN
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id
  UNION ALL
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id

BeforeExecute
-- SqlServer.2008

SELECT
	[x].[Id],
	[x].[OwnerStr]
FROM
	[SomeTable] [x] WITH (NOLOCK)
WHERE
	[x].[Id] = 123 AND EXISTS(
		SELECT
			*
		FROM
			dbo.fn_SomeFunction([x].[Id]) [t1]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SomeTable] [t1] WITH (NOLOCK)
	) [m_1]
		CROSS APPLY dbo.fn_SomeFunction([m_1].[Id]) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[OwnerStr]
FROM
	[SomeTable] [t1] WITH (NOLOCK)

BeforeExecute
-- SqlServer.2008


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeOtherEntity]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeTable]', N'U') IS NOT NULL)
	DROP TABLE [SomeTable]

