﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Dog]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Dog]
(
	[Id]      Int NOT NULL,
	[OwnerId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Human]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Human]
(
	[Id]      Int NOT NULL,
	[HouseId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [House]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [House]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [House]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Window]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Window]
(
	[Id]       Int NOT NULL,
	[Position] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Window]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [House]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Human]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Dog]

