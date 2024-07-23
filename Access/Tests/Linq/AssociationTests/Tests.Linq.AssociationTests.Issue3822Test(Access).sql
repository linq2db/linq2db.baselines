BeforeExecute
-- Access AccessOleDb

DROP TABLE [Dog]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Dog]
(
	[Id]      Int NOT NULL,
	[OwnerId] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @OwnerId Integer -- Int32
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
-- Access AccessOleDb

DROP TABLE [Human]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Human]
(
	[Id]      Int NOT NULL,
	[HouseId] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @HouseId Integer -- Int32
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
-- Access AccessOleDb

DROP TABLE [House]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [House]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb

DROP TABLE [Window]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Window]
(
	[Id]       Int NOT NULL,
	[Position] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Position Integer -- Int32
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
-- Access AccessOleDb

DROP TABLE [Window]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [House]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Human]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Dog]

