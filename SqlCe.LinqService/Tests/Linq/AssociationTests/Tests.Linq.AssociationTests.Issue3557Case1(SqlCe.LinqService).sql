BeforeExecute
-- SqlCe

DROP TABLE [Data]

BeforeExecute
-- SqlCe

CREATE TABLE [Data]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe
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
-- SqlCe

DROP TABLE [SubData1]

BeforeExecute
-- SqlCe

CREATE TABLE [SubData1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe

DROP TABLE [SubData2]

BeforeExecute
-- SqlCe

CREATE TABLE [SubData2]
(
	[Id]     Int           NOT NULL,
	[Reason] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Reason NVarChar(5) -- String
SET     @Reason = 'прст1'

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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Reason NVarChar(5) -- String
SET     @Reason = 'прст2'

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
-- SqlCe

SELECT
	[i].[Id],
	CASE
		WHEN [a_SubData].[Id] IS NULL THEN NULL
		ELSE [t1].[Reason]
	END as [Reason]
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON [i].[Id] = [a_SubData].[Id]
		OUTER APPLY (
			SELECT TOP (1)
				[a_SubDatas].[Reason]
			FROM
				[SubData2] [a_SubDatas]
			WHERE
				[a_SubData].[Id] = [a_SubDatas].[Id]
		) [t1]
ORDER BY
	[i].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SubData2]

BeforeExecute
-- SqlCe

DROP TABLE [SubData1]

BeforeExecute
-- SqlCe

DROP TABLE [Data]

