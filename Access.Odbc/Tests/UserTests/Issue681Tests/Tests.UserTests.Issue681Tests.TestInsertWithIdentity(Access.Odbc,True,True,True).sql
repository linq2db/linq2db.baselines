﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table4]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue681Table4]
(
	[ID]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData.ODBC.mdb].[Issue681Table4]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue681Table4]

