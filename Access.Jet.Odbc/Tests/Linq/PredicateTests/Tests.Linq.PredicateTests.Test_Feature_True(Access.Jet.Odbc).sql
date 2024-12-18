BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [FeatureTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [FeatureTable]
(
	[Id]       Int NOT NULL,
	[One]      Int     NULL,
	[Zero]     Int     NULL,
	[Null]     Int     NULL,
	[True]     Bit     NULL,
	[False]    Bit     NULL,
	[BoolNull] Bit     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @One Int -- Int32
SET     @One = 1
DECLARE @Zero Int -- Int32
SET     @Zero = 0
DECLARE @Null Int -- Int32
SET     @Null = NULL
DECLARE @True Bit -- Boolean
SET     @True = True
DECLARE @False Bit -- Boolean
SET     @False = False
DECLARE @BoolNull Bit -- Boolean
SET     @BoolNull = NULL

INSERT INTO [FeatureTable]
(
	[Id],
	[One],
	[Zero],
	[Null],
	[True],
	[False],
	[BoolNull]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [FeatureTable]

