BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = N'___Value4___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = NULL

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @In VarChar(20) -- AnsiString
SET     @In = N'___Value3___'
DECLARE @In_1 VarChar(20) -- AnsiString
SET     @In_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (@In, @In_1)

BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar(20) -- AnsiString
SET     @NotIn_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @NotIn VarChar(20) -- AnsiString
SET     @NotIn = N'___Value3___'
DECLARE @NotIn_1 VarChar(20) -- AnsiString
SET     @NotIn_1 = N'___Value2___'

SELECT TOP (1)
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] NOT IN (@NotIn, @NotIn_1)

