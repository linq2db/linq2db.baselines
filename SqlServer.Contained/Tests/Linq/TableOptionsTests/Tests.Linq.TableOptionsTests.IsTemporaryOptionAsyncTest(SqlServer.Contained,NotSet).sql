BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

CREATE TABLE [tempdb]..[#temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
INSERT ASYNC BULK [tempdb]..[#temp_table1](ID, Value)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

CREATE TABLE [tempdb]..[#temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table1] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[tempdb]..[#temp_table2] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

INSERT INTO [tempdb]..[#temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)

TRUNCATE TABLE [tempdb]..[#temp_table1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

TRUNCATE TABLE [tempdb]..[#temp_table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table1]

