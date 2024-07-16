BeforeExecute
-- SqlCe

DROP TABLE [Dog]

BeforeExecute
-- SqlCe

CREATE TABLE [Dog]
(
	[Id]      Int NOT NULL,
	[OwnerId] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @OwnerId Int -- Int32
SET     @OwnerId = 1

INSERT INTO [Dog]
(
	[Id],
	[OwnerId]
)
VALUES
(
	@Id,
	@OwnerId
)

BeforeExecute
-- SqlCe

DROP TABLE [Human]

BeforeExecute
-- SqlCe

CREATE TABLE [Human]
(
	[Id]      Int NOT NULL,
	[HouseId] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @HouseId Int -- Int32
SET     @HouseId = 1

INSERT INTO [Human]
(
	[Id],
	[HouseId]
)
VALUES
(
	@Id,
	@HouseId
)

BeforeExecute
-- SqlCe

DROP TABLE [House]

BeforeExecute
-- SqlCe

CREATE TABLE [House]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [House]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe

DROP TABLE [Window]

BeforeExecute
-- SqlCe

CREATE TABLE [Window]
(
	[Id]       Int NOT NULL,
	[Position] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Position Int -- Int32
SET     @Position = 6

INSERT INTO [Window]
(
	[Id],
	[Position]
)
VALUES
(
	@Id,
	@Position
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Id]
FROM
	[Dog] [x]
		INNER JOIN [Human] [a_Owner] ON [x].[OwnerId] = [a_Owner].[Id]
		INNER JOIN [House] [a_House] ON [a_Owner].[HouseId] = [a_House].[Id]
		LEFT JOIN (
			SELECT TOP (1)
				[a_WindowAtPosition].[Id]
			FROM
				[Window] [a_WindowAtPosition]
			WHERE
				[a_WindowAtPosition].[Position] = 6
		) [t1] ON 1=1

BeforeExecute
-- SqlCe

DROP TABLE [Window]

BeforeExecute
-- SqlCe

DROP TABLE [House]

BeforeExecute
-- SqlCe

DROP TABLE [Human]

BeforeExecute
-- SqlCe

DROP TABLE [Dog]

