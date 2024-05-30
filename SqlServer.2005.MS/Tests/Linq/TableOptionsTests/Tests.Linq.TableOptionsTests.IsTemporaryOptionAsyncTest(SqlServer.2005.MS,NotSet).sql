BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

CREATE TABLE [tempdb]..[#temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
INSERT ASYNC BULK [tempdb]..[#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

CREATE TABLE [tempdb]..[#temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [tempdb]..[#temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table1] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table1] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table2] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [tempdb]..[#temp_table1]
(
	[ID],
	[Value]
)
SELECT 2,3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO [tempdb]..[#temp_table1]
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
INSERT ASYNC BULK [tempdb]..[#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

TRUNCATE TABLE [tempdb]..[#temp_table1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

TRUNCATE TABLE [tempdb]..[#temp_table2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#temp_table2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#temp_table2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#temp_table1]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#temp_table1]

