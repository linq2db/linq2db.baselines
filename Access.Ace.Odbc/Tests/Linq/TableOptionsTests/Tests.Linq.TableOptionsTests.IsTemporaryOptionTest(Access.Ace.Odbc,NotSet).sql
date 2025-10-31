-- Access.Ace.Odbc AccessODBC

CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- Access.Ace.Odbc AccessODBC

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

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table2] [t1]

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC

DELETE FROM [temp_table1]

-- Access.Ace.Odbc AccessODBC

DELETE FROM [temp_table2]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [temp_table2]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [temp_table1]

