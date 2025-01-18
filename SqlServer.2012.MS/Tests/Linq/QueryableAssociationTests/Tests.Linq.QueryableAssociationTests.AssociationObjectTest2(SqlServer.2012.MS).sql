BeforeExecute
-- SqlServer.2012.MS SqlServer.2012


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE FUNCTION fn_SomeFunction (@id AS INT)
RETURNS TABLE
AS RETURN
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id
  UNION ALL
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[OwnerStr]
FROM
	[SomeTable] [t1] WITH (NOLOCK)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

