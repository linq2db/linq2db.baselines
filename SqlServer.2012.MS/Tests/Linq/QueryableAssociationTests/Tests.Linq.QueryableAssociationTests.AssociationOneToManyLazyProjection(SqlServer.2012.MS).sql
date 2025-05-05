﻿BeforeExecute
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t3].[Id]
		FROM
			(
				SELECT TOP (@take)
					[e].[Id]
				FROM
					[SomeEntity] [e] WITH (NOLOCK)
						OUTER APPLY (
							SELECT TOP (1)
								*
							FROM
								[SomeOtherEntity] [a_Other]
							WHERE
								[a_Other].[Id] = [e].[Id]
						) [t1]
						OUTER APPLY (
							SELECT TOP (1)
								*
							FROM
								dbo.fn_SomeFunction([e].[Id]) [a_OtherFromSql]
						) [t2]
			) [t3]
	) [m_1]
		CROSS APPLY (
			SELECT TOP (@p)
				[d].[Id],
				[d].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [d]
			WHERE
				[d].[Id] = [m_1].[Id]
		) [d_1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t3].[Id]
		FROM
			(
				SELECT TOP (@take)
					[e].[Id]
				FROM
					[SomeEntity] [e] WITH (NOLOCK)
						OUTER APPLY (
							SELECT TOP (1)
								*
							FROM
								[SomeOtherEntity] [a_Other]
							WHERE
								[a_Other].[Id] = [e].[Id]
						) [t1]
						OUTER APPLY (
							SELECT TOP (1)
								*
							FROM
								dbo.fn_SomeFunction([e].[Id]) [a_OtherFromSql]
						) [t2]
			) [t3]
	) [m_1]
		CROSS APPLY dbo.fn_SomeFunction([m_1].[Id]) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[e].[Id],
	[t1].[Id],
	[t1].[StrValue],
	[t2].[Id],
	[t2].[StrValue]
FROM
	[SomeEntity] [e] WITH (NOLOCK)
		OUTER APPLY (
			SELECT TOP (1)
				[a_Other].[Id],
				[a_Other].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [e].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_OtherFromSql].[Id],
				[a_OtherFromSql].[StrValue]
			FROM
				dbo.fn_SomeFunction([e].[Id]) [a_OtherFromSql]
		) [t2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

