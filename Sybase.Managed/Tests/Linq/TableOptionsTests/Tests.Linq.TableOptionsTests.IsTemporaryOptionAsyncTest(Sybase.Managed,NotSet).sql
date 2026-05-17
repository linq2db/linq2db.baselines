-- Sybase.Managed Sybase

CREATE TABLE #temp_table1
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table1] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 1,2

-- Sybase.Managed Sybase

CREATE TABLE #temp_table2
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table2] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

INSERT INTO #temp_table2
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#temp_table1 [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#temp_table1 [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#temp_table2 [t1]

-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 2,3

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 4,5

-- Sybase.Managed Sybase

TRUNCATE TABLE #temp_table1

-- Sybase.Managed Sybase

TRUNCATE TABLE #temp_table2

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#temp_table2') IS NOT NULL)
	DROP TABLE #temp_table2

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#temp_table1') IS NOT NULL)
	DROP TABLE #temp_table1

