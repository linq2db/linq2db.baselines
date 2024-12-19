BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NULL)
	CREATE TABLE [DistinctOrderByTable]
	(
		[Id] Int            NOT NULL,
		[F1] Int            NOT NULL,
		[F2] NVarChar(4000)     NULL,
		[F3] Int            NOT NULL,

		CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @F1 Int -- Int32
SET     @F1 = 8
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'8'
DECLARE @F3 Int -- Int32
SET     @F3 = 5

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'
DECLARE @F3 Int -- Int32
SET     @F3 = 3

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @F1 Int -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'2'
DECLARE @F3 Int -- Int32
SET     @F3 = 1

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'
DECLARE @F3 Int -- Int32
SET     @F3 = 4

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'
DECLARE @F3 Int -- Int32
SET     @F3 = 7

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @F1 Int -- Int32
SET     @F1 = 5
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'5'
DECLARE @F3 Int -- Int32
SET     @F3 = 2

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @F1 Int -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'2'
DECLARE @F3 Int -- Int32
SET     @F3 = 8

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @F1 Int -- Int32
SET     @F1 = 4
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'4'
DECLARE @F3 Int -- Int32
SET     @F3 = 6

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[F2]
FROM
	(
		SELECT DISTINCT
			[t2].[F1],
			[t2].[F2]
		FROM
			(
				SELECT
					[t1].[F1],
					[t1].[F2]
				FROM
					[DistinctOrderByTable] [t1]
				ORDER BY
					[t1].[F3] DESC
				OFFSET @skip ROWS
			) [t2]
	) [t3]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [DistinctOrderByTable]

