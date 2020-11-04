﻿BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #temp_table1
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 1,2

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #temp_table2
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
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
-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 2,3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO #temp_table1
(
	[ID],
	[Value]
)
SELECT 4,5

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE #temp_table1

BeforeExecute
-- Sybase.Managed Sybase

TRUNCATE TABLE #temp_table2

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE #temp_table2

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE #temp_table1

