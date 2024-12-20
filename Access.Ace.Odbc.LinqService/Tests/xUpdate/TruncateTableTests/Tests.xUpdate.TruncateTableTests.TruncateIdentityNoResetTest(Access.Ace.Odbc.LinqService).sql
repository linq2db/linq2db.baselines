BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_temp]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [test_temp]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM [test_temp]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM [test_temp]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [test_temp]

