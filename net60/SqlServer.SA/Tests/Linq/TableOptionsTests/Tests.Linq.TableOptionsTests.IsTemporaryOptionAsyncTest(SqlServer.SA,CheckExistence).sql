﻿BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

IF (OBJECT_ID(N'[#temp_table1]', N'U') IS NULL)
	CREATE TABLE [#temp_table1]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

IF (OBJECT_ID(N'[#temp_table2]', N'U') IS NULL)
	CREATE TABLE [#temp_table2]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [#temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[#temp_table1] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[#temp_table1] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[#temp_table2] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [#temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3

INSERT INTO [#temp_table1]
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
INSERT ASYNC BULK [#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

TRUNCATE TABLE [#temp_table1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

TRUNCATE TABLE [#temp_table2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [#temp_table2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [#temp_table1]

