BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Dog]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Dog]
(
	[Id]      Int NOT NULL,
	[OwnerId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Human]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Human]
(
	[Id]      Int NOT NULL,
	[HouseId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [House]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [House]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Window]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Window]
(
	[Id]       Int NOT NULL,
	[Position] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Window]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [House]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Human]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Dog]

