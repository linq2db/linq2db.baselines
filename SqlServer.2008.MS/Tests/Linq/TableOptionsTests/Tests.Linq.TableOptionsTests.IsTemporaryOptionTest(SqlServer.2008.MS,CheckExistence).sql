-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table1]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#temp_table1]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

INSERT BULK [tempdb]..[#temp_table1](ID, Value)

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table2]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#temp_table2]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2008.MS SqlServer.2008

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

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table1] [t1]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table2] [t1]

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [tempdb]..[#temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

-- SqlServer.2008.MS SqlServer.2008
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

INSERT BULK [tempdb]..[#temp_table1](ID, Value)

-- SqlServer.2008.MS SqlServer.2008

TRUNCATE TABLE [tempdb]..[#temp_table1]

-- SqlServer.2008.MS SqlServer.2008

TRUNCATE TABLE [tempdb]..[#temp_table2]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#temp_table2]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#temp_table1]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#temp_table1]

