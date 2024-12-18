BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FeatureTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Zero Integer -- Int32
SET     @Zero = 0
DECLARE @Null Integer -- Int32
SET     @Null = NULL
DECLARE @True Boolean
SET     @True = True
DECLARE @False Boolean
SET     @False = False
DECLARE @BoolNull Boolean
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
	@Id,
	@One,
	@Zero,
	@Null,
	@True,
	@False,
	@BoolNull
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) = TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[One]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Zero]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Null] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Zero]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[One] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	(([r].[Zero] = [r].[Null]) <> TRUE) = True

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FeatureTable]

