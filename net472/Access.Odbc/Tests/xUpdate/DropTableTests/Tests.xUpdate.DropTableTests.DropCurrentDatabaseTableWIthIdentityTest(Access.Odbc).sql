BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t].[ID], 
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[ID], 
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

