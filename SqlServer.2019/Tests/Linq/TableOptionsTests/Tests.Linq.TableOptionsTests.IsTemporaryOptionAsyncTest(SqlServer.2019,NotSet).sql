-- SqlServer.2019

CREATE TABLE [tempdb]..[#temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

INSERT ASYNC BULK [tempdb]..[#temp_table1](ID, Value)

-- SqlServer.2019

CREATE TABLE [tempdb]..[#temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2019

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

-- SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table1] [t1]

-- SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table2] [t1]

-- SqlServer.2019

INSERT INTO [tempdb]..[#temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

-- SqlServer.2019
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

INSERT ASYNC BULK [tempdb]..[#temp_table1](ID, Value)

-- SqlServer.2019

TRUNCATE TABLE [tempdb]..[#temp_table1]

-- SqlServer.2019

TRUNCATE TABLE [tempdb]..[#temp_table2]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table2]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table1]

