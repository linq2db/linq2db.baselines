BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NULL)
	CREATE TABLE [DistinctOrderByTable]
	(
		[Id] Int            NOT NULL,
		[F1] Int            NOT NULL,
		[F2] NVarChar(4000)     NULL,

		CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @F1 Int -- Int32
SET     @F1 = 8
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'8'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @F1 Int -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'2'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @F1 Int -- Int32
SET     @F1 = 3
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'3'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @F1 Int -- Int32
SET     @F1 = 5
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'5'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @F1 Int -- Int32
SET     @F1 = 2
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'2'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @F1 Int -- Int32
SET     @F1 = 4
DECLARE @F2 NVarChar(4000) -- String
SET     @F2 = N'4'

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[_1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
	) [_1]
ORDER BY
	[_1].[F1] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

