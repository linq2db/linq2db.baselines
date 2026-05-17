-- Access.Ace.OleDb AccessOleDb
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@One IN (0, 1)

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
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Zero IN (0, 1)

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
DECLARE @OneN Integer -- Int32
SET     @OneN = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@OneN IN (0, 1)

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
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@ZeroN IN (0, 1)

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
DECLARE @Null Integer -- Int32
SET     @Null = NULL

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Null IN (0, 1)

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
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @One_1 Integer -- Int32
SET     @One_1 = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@One IN (0, 1) OR @One_1 IS NULL)

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
DECLARE @Zero Integer -- Int32
SET     @Zero = 0
DECLARE @Zero_1 Integer -- Int32
SET     @Zero_1 = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@Zero IN (0, 1) OR @Zero_1 IS NULL)

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
DECLARE @OneN Integer -- Int32
SET     @OneN = 1
DECLARE @OneN_1 Integer -- Int32
SET     @OneN_1 = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@OneN IN (0, 1) OR @OneN_1 IS NULL)

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
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0
DECLARE @ZeroN_1 Integer -- Int32
SET     @ZeroN_1 = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@ZeroN IN (0, 1) OR @ZeroN_1 IS NULL)

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
DECLARE @Null Integer -- Int32
SET     @Null = NULL
DECLARE @Null_1 Integer -- Int32
SET     @Null_1 = NULL

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@Null IN (0, 1) OR @Null_1 IS NULL)

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
DECLARE @One Integer -- Int32
SET     @One = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@One NOT IN (0, 1)

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
DECLARE @Zero Integer -- Int32
SET     @Zero = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	@Zero NOT IN (0, 1)

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
DECLARE @OneN Integer -- Int32
SET     @OneN = 1
DECLARE @OneN_1 Integer -- Int32
SET     @OneN_1 = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@OneN NOT IN (0, 1) OR @OneN_1 IS NULL)

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
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0
DECLARE @ZeroN_1 Integer -- Int32
SET     @ZeroN_1 = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@ZeroN NOT IN (0, 1) OR @ZeroN_1 IS NULL)

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
DECLARE @Null Integer -- Int32
SET     @Null = NULL
DECLARE @Null_1 Integer -- Int32
SET     @Null_1 = NULL

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@Null NOT IN (0, 1) OR @Null_1 IS NULL)

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
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @One_1 Integer -- Int32
SET     @One_1 = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@One NOT IN (0, 1) AND @One_1 IS NOT NULL)

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
DECLARE @Zero Integer -- Int32
SET     @Zero = 0
DECLARE @Zero_1 Integer -- Int32
SET     @Zero_1 = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@Zero NOT IN (0, 1) AND @Zero_1 IS NOT NULL)

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
DECLARE @OneN Integer -- Int32
SET     @OneN = 1
DECLARE @OneN_1 Integer -- Int32
SET     @OneN_1 = 1

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@OneN NOT IN (0, 1) AND @OneN_1 IS NOT NULL)

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
DECLARE @ZeroN Integer -- Int32
SET     @ZeroN = 0
DECLARE @ZeroN_1 Integer -- Int32
SET     @ZeroN_1 = 0

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@ZeroN NOT IN (0, 1) AND @ZeroN_1 IS NOT NULL)

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
DECLARE @Null Integer -- Int32
SET     @Null = NULL
DECLARE @Null_1 Integer -- Int32
SET     @Null_1 = NULL

SELECT
	[r].[Id],
	[r].[Value1],
	[r].[Value2],
	[r].[Value4],
	[r].[Value5]
FROM
	[BooleanTable] [r]
WHERE
	(@Null NOT IN (0, 1) AND @Null_1 IS NOT NULL)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

