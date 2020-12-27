BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeEntity]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NULL)
	CREATE TABLE [SomeEntity]
	(
		[Id]       Int            NOT NULL,
		[OwnerStr] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008

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
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[key_data_result].[OwnerStr],
	[t2].[Id],
	[t2].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[t1].[OwnerStr]
		FROM
			(
				SELECT TOP (@p_1)
					[e].[Id],
					[e].[OwnerStr]
				FROM
					[SomeEntity] [e] WITH (NOLOCK)
			) [t1]
	) [key_data_result]
		CROSS APPLY (
			SELECT TOP (@take)
				[detail].[Id],
				[detail].[StrValue]
			FROM
				[SomeOtherEntity] [detail]
			WHERE
				[detail].[Id] = [key_data_result].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[key_data_result].[Id],
	[key_data_result].[OwnerStr],
	[detail].[Id],
	[detail].[StrValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[t1].[OwnerStr]
		FROM
			(
				SELECT TOP (@p_1)
					[e].[Id],
					[e].[OwnerStr]
				FROM
					[SomeEntity] [e] WITH (NOLOCK)
			) [t1]
	) [key_data_result]
		CROSS APPLY dbo.fn_SomeFunction([key_data_result].[Id]) [detail]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT TOP (@take)
	[e].[Id],
	[e].[OwnerStr],
	[a_Other].[Id],
	[a_Other].[StrValue],
	[a_OtherFromSql].[Id],
	[a_OtherFromSql].[StrValue]
FROM
	[SomeEntity] [e] WITH (NOLOCK)
		OUTER APPLY (
			SELECT TOP (@take_1)
				[se].[Id],
				[se].[StrValue]
			FROM
				[SomeOtherEntity] [se]
			WHERE
				[se].[Id] = [e].[Id]
		) [a_Other]
		OUTER APPLY (
			SELECT TOP (@take_2)
				[t1].[Id],
				[t1].[StrValue]
			FROM
				dbo.fn_SomeFunction([e].[Id]) [t1]
		) [a_OtherFromSql]

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

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeEntity]

