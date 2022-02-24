BeforeExecute
-- SqlServer.2008 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#temp_table1]', N'U') IS NULL)
	CREATE TABLE [#temp_table1]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.2008 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#temp_table2]', N'U') IS NULL)
	CREATE TABLE [#temp_table2]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008 (asynchronously)

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
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[#temp_table1] [t1]

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[#temp_table2] [t1]

BeforeExecute
-- SqlServer.2008 (asynchronously)

INSERT INTO [#temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

BeforeExecute
-- SqlServer.2008 (asynchronously)
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
-- SqlServer.2008 (asynchronously)

TRUNCATE TABLE [#temp_table1]

BeforeExecute
-- SqlServer.2008 (asynchronously)

TRUNCATE TABLE [#temp_table2]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table2]', N'U') IS NOT NULL)
	DROP TABLE [#temp_table2]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table1]', N'U') IS NOT NULL)
	DROP TABLE [#temp_table1]

