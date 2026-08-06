-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @MoneyValue VarChar(1, 0) -- AnsiString
SET     @MoneyValue = 0

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(1, 0) -- AnsiString
SET     @MoneyValue = 0
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @MoneyValue VarChar(1, 1) -- AnsiString
SET     @MoneyValue = 0.5

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(1, 1) -- AnsiString
SET     @MoneyValue = 0.5
DECLARE @ID Int -- Int32
SET     @ID = 2

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @MoneyValue VarChar(2, 2) -- AnsiString
SET     @MoneyValue = 0.05

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(2, 2) -- AnsiString
SET     @MoneyValue = 0.05
DECLARE @ID Int -- Int32
SET     @ID = 3

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @MoneyValue VarChar(4, 4) -- AnsiString
SET     @MoneyValue = 0.0005

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(4, 4) -- AnsiString
SET     @MoneyValue = 0.0005
DECLARE @ID Int -- Int32
SET     @ID = 4

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @MoneyValue VarChar(2, 1) -- AnsiString
SET     @MoneyValue = 1.5

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(2, 1) -- AnsiString
SET     @MoneyValue = 1.5
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 6
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 1.05

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 1.05
DECLARE @ID Int -- Int32
SET     @ID = 6

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 7
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.0005

INSERT INTO [TableWithMoney]
(
	[ID],
	[MoneyValue]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @MoneyValue VarChar(5, 4) -- AnsiString
SET     @MoneyValue = 1.0005
DECLARE @ID Int -- Int32
SET     @ID = 7

UPDATE
	[TableWithMoney] [t1]
SET
	[t1].[MoneyValue] = ?
WHERE
	[t1].[ID] = ?

