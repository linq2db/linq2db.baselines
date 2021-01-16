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
	[t1].[Value]
FROM
	[temp_table1] [t1]

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
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3

INSERT INTO [temp_table1]
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

