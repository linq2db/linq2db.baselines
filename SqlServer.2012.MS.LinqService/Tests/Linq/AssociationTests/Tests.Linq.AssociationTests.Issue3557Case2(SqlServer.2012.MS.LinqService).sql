BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Data]', N'U') IS NOT NULL)
	DROP TABLE [Data]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Data]', N'U') IS NULL)
	CREATE TABLE [Data]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData1]', N'U') IS NOT NULL)
	DROP TABLE [SubData1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData1]', N'U') IS NULL)
	CREATE TABLE [SubData1]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData2]', N'U') IS NOT NULL)
	DROP TABLE [SubData2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData2]', N'U') IS NULL)
	CREATE TABLE [SubData2]
	(
		[Id]     Int            NOT NULL,
		[Reason] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Reason NVarChar(4000) -- String
SET     @Reason = N'прст1'

INSERT INTO [SubData2]
(
	[Id],
	[Reason]
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Reason NVarChar(4000) -- String
SET     @Reason = N'прст2'

INSERT INTO [SubData2]
(
	[Id],
	[Reason]
)
VALUES
(
	@Id,
	@Reason
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[Id],
	[t1].[Reason],
	[t1].[is_empty]
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
		OUTER APPLY (
			SELECT TOP (@take)
				[s].[Reason],
				1 as [is_empty]
			FROM
				[SubData2] [s]
			WHERE
				[a_SubData].[Id] = [s].[Id]
		) [t1]
ORDER BY
	[i].[Id]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData2]', N'U') IS NOT NULL)
	DROP TABLE [SubData2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[SubData1]', N'U') IS NOT NULL)
	DROP TABLE [SubData1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Data]', N'U') IS NOT NULL)
	DROP TABLE [Data]

