BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Mixed]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Mixed]
(
	[Int]    Int           NOT NULL,
	[Str]    NVarChar(255)     NULL,
	[Date]   DateTime      NOT NULL,
	[Double] Float         NOT NULL,
	[Bool]   Bit           NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 1
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date_1 DateTime
SET     @Date_1 = #2001-01-01#
DECLARE @Double_1 Double
SET     @Double_1 = 1
DECLARE @Bool Bit -- Boolean
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Int_1 Int -- Int32
SET     @Int_1 = 2
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date_1 DateTime
SET     @Date_1 = #2002-02-02#
DECLARE @Double_1 Double
SET     @Double_1 = 2
DECLARE @Bool Bit -- Boolean
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
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
			(2 > [u].[Int] OR 2 = [u].[Int] AND [u].[Date] > [t].[Date])
	)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Mixed]

