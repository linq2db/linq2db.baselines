BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Mixed]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Mixed]
(
	[Int]    Int           NOT NULL,
	[Str]    NVarChar(255)     NULL,
	[Date]   DateTime      NOT NULL,
	[Double] Float         NOT NULL,
	[Bool]   Bit           NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Int Integer -- Int32
SET     @Int = 1
DECLARE @Str VarWChar(3) -- String
SET     @Str = 'One'
DECLARE @Date Date -- DateTime
SET     @Date = #2001-01-01#
DECLARE @Double Double
SET     @Double = 1
DECLARE @Bool Boolean
SET     @Bool = True

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Int Integer -- Int32
SET     @Int = 2
DECLARE @Str VarWChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date Date -- DateTime
SET     @Date = #2002-02-02#
DECLARE @Double Double
SET     @Double = 2
DECLARE @Bool Boolean
SET     @Bool = False

INSERT INTO [Mixed]
(
	[Int],
	[Str],
	[Date],
	[Double],
	[Bool]
)
VALUES
(
	@Int,
	@Str,
	@Date,
	@Double,
	@Bool
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND
	[t].[Str] = 'One' AND
	[t].[Double] = 1 AND
	[t].[Bool] = True AND
	EXISTS(
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date]
	)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Mixed]

