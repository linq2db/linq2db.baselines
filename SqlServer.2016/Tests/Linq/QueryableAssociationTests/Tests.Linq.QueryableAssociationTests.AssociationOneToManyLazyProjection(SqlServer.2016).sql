﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SomeEntity]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NULL)
	CREATE TABLE [SomeEntity]
	(
		[Id]       Int            NOT NULL,
		[OwnerStr] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [SomeEntity]
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
-- SqlServer.2016

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NULL)
	CREATE TABLE [SomeOtherEntity]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2016

CREATE FUNCTION fn_SomeFunction (@id AS INT)
RETURNS TABLE
AS RETURN
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id
  UNION ALL
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 2

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
			SELECT TOP (1)
				[d].[Id],
				[d].[StrValue] + N'_A' as [StrValue]
			FROM
				[SomeOtherEntity] [d]
			WHERE
				[d].[Id] = [m_1].[Id]
		) [d_1]

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [SomeEntity]

