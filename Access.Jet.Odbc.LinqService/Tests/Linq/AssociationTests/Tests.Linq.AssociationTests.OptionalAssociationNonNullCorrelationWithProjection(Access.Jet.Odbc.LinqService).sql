BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Table1]
(
	[ID]  Int NOT NULL,
	[ID2] Int     NULL,

	CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID2 Int -- Int32
SET     @ID2 = 1

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID2 Int -- Int32
SET     @ID2 = 2

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Table2]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID3 Int -- Int32
SET     @ID3 = 1

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table3]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Table3]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table4]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Table4]
(
	[ID]  Int NOT NULL,
	[ID3] Int     NULL,

	CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @ID3 Int -- Int32
SET     @ID3 = 1

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID3 Int -- Int32
SET     @ID3 = NULL

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	([Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON ([r].[ID2] = [a_Table2].[ID]))
		LEFT JOIN [Table3] [a_Table3] ON ([a_Table2].[ID3] = [a_Table3].[ID])
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] = [id].[ID3] AND [id].[ID] = [r].[ID]
	)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table4]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table3]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table2]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Table1]

