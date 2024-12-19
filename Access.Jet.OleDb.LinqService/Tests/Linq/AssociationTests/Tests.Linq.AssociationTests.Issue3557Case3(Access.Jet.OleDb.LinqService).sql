BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Data]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Data]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SubData1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SubData1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SubData2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SubData2]
(
	[Id]     Int           NOT NULL,
	[Reason] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Reason VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb

SELECT
	[i].[Id],
	(
		SELECT TOP 1
			[a_SubDatas].[Reason]
		FROM
			[SubData2] [a_SubDatas]
		WHERE
			[a_SubData].[Id] = [a_SubDatas].[Id]
	)
FROM
	[Data] [i]
		LEFT JOIN [SubData1] [a_SubData] ON ([i].[Id] = [a_SubData].[Id])
ORDER BY
	[i].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SubData2]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SubData1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Data]

