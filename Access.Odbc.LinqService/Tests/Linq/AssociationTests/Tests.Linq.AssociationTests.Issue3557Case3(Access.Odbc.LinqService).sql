BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Data]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Data]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [Data]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubData1]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SubData1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [SubData1]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubData2]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SubData2]
(
	[Id]     Int           NOT NULL,
	[Reason] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC

DROP TABLE [SubData2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubData1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Data]

