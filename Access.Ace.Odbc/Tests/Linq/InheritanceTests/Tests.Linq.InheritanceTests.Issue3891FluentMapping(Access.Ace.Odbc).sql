﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Base2]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Base2]
(
	[Id]           Int           NOT NULL,
	[Type]         Int           NOT NULL,
	[Name_First]   NVarChar(255)     NULL,
	[Name_Second]  NVarChar(255)     NULL,
	[Test_ChildId] Int           NOT NULL,

	CONSTRAINT [PK_Base2] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Type  -- Int32
SET     @Type = 1
DECLARE @ChildId  -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO [Base2]
(
	[Id],
	[Type],
	[Test_ChildId],
	[Name_First],
	[Name_Second]
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base2] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Type  -- Int32
SET     @Type = 1
DECLARE @ChildId  -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[Base2] [t1]
SET
	[t1].[Type] = ?,
	[t1].[Test_ChildId] = ?,
	[t1].[Name_First] = ?,
	[t1].[Name_Second] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base2] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Base2]

