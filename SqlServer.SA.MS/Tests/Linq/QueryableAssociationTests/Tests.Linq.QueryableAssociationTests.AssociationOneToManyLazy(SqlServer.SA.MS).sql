﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE FUNCTION fn_SomeFunction (@id AS INT)
RETURNS TABLE
AS RETURN
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id
  UNION ALL
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
			[t2].[Id]
		FROM
			(
				SELECT TOP (@take)
					[t1].[Id]
				FROM
					[SomeEntity] [t1] WITH (NOLOCK)
			) [t2]
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
-- SqlServer.SA.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t2].[Id]
		FROM
			(
				SELECT TOP (@take)
					[t1].[Id]
				FROM
					[SomeEntity] [t1] WITH (NOLOCK)
			) [t2]
	) [m_1]
		CROSS APPLY dbo.fn_SomeFunction([m_1].[Id]) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t2].[Id],
	[t2].[OwnerStr],
	[t1].[cond],
	[t1].[StrValue]
FROM
	[SomeEntity] [t2] WITH (NOLOCK)
		OUTER APPLY (
			SELECT TOP (1)
				[a_Other].[Id] as [cond],
				[a_Other].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [t2].[Id]
		) [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

