-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value2]) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] = [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(([r].[Value5] = [r].[Value4] OR [r].[Value5] IS NULL AND [r].[Value4] IS NULL) AND NOT ([r].[Value5] IS NULL AND [r].[Value4] IS NOT NULL OR [r].[Value5] IS NOT NULL AND [r].[Value4] IS NULL)) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value2]) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] > [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] > [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value2]) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] >= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] >= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value2]) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] < [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] < [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) = @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	1 = 0

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value2]) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value1] <= [r].[Value4] AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @True Boolean
SET     @True = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @True

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @TrueN Boolean
SET     @TrueN = True

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @TrueN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @False Boolean
SET     @False = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @False

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @FalseN Boolean
SET     @FalseN = False

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	([r].[Value5] <= [r].[Value4] AND [r].[Value5] IS NOT NULL AND [r].[Value4] IS NOT NULL) <> @FalseN

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

