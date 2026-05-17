-- Access.Ace.Odbc AccessODBC

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	1,
	DateSerial(1899, 12, 29)
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	2,
	DateSerial(1899, 12, 30)
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	3,
	DateSerial(1899, 12, 31)
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [DateTable]
(
	[ID],
	[Date]
)
VALUES
(
	4,
	DateSerial(1900, 1, 1)
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Date]
FROM
	[DateTable] [t1]
ORDER BY
	[t1].[ID]

