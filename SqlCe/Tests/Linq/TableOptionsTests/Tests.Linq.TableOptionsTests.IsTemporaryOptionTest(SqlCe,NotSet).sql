BeforeExecute
-- SqlCe

CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
SELECT 1,2

BeforeExecute
-- SqlCe

CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[temp_table1] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[temp_table1] [t1]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[Value] as [Value_1]
FROM
	[temp_table2] [t1]

BeforeExecute
-- SqlCe

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
SELECT 2,3

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
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
-- SqlCe

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
SELECT 4,5

BeforeExecute
-- SqlCe

DELETE FROM [temp_table1]

BeforeExecute
-- SqlCe

DELETE FROM [temp_table2]

BeforeExecute
-- SqlCe

DROP TABLE [temp_table2]

BeforeExecute
-- SqlCe

DROP TABLE [temp_table1]

