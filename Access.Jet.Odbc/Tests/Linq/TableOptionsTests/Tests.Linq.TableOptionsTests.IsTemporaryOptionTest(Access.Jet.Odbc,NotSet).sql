-- Access.Jet.Odbc AccessODBC

CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table1] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Value Int -- Int32
SET     @Value = 2

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table2] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table2] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @Value Int -- Int32
SET     @Value = 5

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC

DELETE FROM [temp_table1]

-- Access.Jet.Odbc AccessODBC

DELETE FROM [temp_table2]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [temp_table2]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [temp_table1]

