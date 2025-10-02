BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table1] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value Integer -- Int32
SET     @Value = 2

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

INSERT INTO [temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table2] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @Value Integer -- Int32
SET     @Value = 5

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DELETE FROM [temp_table1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DELETE FROM [temp_table2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [temp_table2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [temp_table1]

