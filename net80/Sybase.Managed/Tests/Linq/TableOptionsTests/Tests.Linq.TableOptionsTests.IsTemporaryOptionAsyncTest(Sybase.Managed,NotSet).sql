BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE #temp_table1
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 1,2

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE #temp_table2
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#temp_table1 [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	#temp_table2 [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 2,3

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 4,5

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

TRUNCATE TABLE #temp_table1

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

TRUNCATE TABLE #temp_table2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#temp_table2') IS NOT NULL)
	DROP TABLE #temp_table2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#temp_table1') IS NOT NULL)
	DROP TABLE #temp_table1

