BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4469Table]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4469Table]
(
	[Integer] Int            NOT NULL,
	[Decimal] Decimal(10, 5) NOT NULL,
	[Double]  Float          NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Integer  -- Int32
SET     @Integer = 100
DECLARE @Decimal VarChar(3, 0) -- AnsiString
SET     @Decimal = 100
DECLARE @Double  -- Double
SET     @Double = 100

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[v].[Integer] / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4469Table]

