BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4469Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue4469Table]
(
	[Integer] Int            NOT NULL,
	[Decimal] Decimal(10, 5) NOT NULL,
	[Double]  Float          NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Integer Integer -- Int32
SET     @Integer = 100
DECLARE @Decimal VarChar(3, 0) -- AnsiString
SET     @Decimal = 100
DECLARE @Double Double
SET     @Double = 100

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @param Integer -- Int32
SET     @param = 33
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 33
DECLARE @param_2 Integer -- Int32
SET     @param_2 = 33

SELECT TOP 2
	[v].[Integer] / CVar(@param),
	[v].[Decimal] / CVar(@param_1),
	[v].[Double] / CVar(@param_2)
FROM
	[Issue4469Table] [v]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue4469Table]

