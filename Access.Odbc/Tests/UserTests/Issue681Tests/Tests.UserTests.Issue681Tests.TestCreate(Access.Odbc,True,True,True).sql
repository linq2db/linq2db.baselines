﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table2]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table]

