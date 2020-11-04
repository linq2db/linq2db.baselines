BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NULL)
	CREATE TABLE [SomeEntity]
	(
		[Id]       Int            NOT NULL,
		[OwnerStr] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NULL)
	CREATE TABLE [SomeOtherEntity]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2012

CREATE FUNCTION fn_SomeFunction (@id AS INT)
RETURNS TABLE
AS RETURN
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id
  UNION ALL
  SELECT * FROM [SomeOtherEntity] WHERE Id = @id

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[lw_SomeEntity].[Id],
	[detail].[Id],
	[detail].[StrValue]
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
	) [lw_SomeEntity]
		INNER JOIN [SomeOtherEntity] [detail] ON [detail].[Id] = [lw_SomeEntity].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[lw_SomeEntity].[Id],
	[detail].[Id],
	[detail].[StrValue]
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
	) [lw_SomeEntity]
		CROSS APPLY dbo.fn_SomeFunction([lw_SomeEntity].[Id]) [detail]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT TOP (@take)
	[t1].[Id],
	[t1].[OwnerStr],
	[a_Other].[Id],
	[a_Other].[StrValue]
FROM
	[SomeEntity] [t1] WITH (NOLOCK)
		OUTER APPLY (
			SELECT TOP (@take_1)
				[se].[Id],
				[se].[StrValue]
			FROM
				[SomeOtherEntity] [se]
			WHERE
				[se].[Id] = [t1].[Id]
		) [a_Other]

BeforeExecute
-- SqlServer.2012


				IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id(N'fn_SomeFunction') AND xtype IN (N'FN', N'IF', N'TF'))
					DROP FUNCTION fn_SomeFunction

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeOtherEntity]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NOT NULL)
	DROP TABLE [SomeEntity]

