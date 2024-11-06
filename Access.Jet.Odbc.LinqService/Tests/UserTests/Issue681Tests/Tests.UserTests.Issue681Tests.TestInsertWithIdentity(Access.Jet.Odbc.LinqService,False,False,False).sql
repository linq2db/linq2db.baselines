BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue681Table4]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue681Table4]
(
	[ID]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value  -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue681Table4]

