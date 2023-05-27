﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Src]
(
	[Id]    Int         NOT NULL,
	[Int]   Int             NULL,
	[Enum]  NVarChar(5)     NULL,
	[CEnum] VarChar(20)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int Int -- Int32
SET     @Int = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int Int -- Int32
SET     @Int = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

INSERT INTO [Src]
(
	[Id],
	[Int],
	[Enum],
	[CEnum]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value4___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (?, ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] IN (?) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	[s].[CEnum] IN (?, ?)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (?) AND [s].[CEnum] IS NOT NULL)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum_1 VarChar(12) -- AnsiString
SET     @CEnum_1 = '___Value2___'

SELECT TOP 1
	[s].[Id]
FROM
	[Src] [s]
WHERE
	([s].[CEnum] NOT IN (?, ?) OR [s].[CEnum] IS NULL)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Src]

