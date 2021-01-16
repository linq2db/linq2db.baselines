BeforeExecute
-- Access AccessOleDb

CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 2

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
-- Access AccessOleDb

CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Value_1 Integer -- Int32
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
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer -- Int32
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
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 5

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
-- Access AccessOleDb

DELETE FROM [temp_table1]

BeforeExecute
-- Access AccessOleDb

DELETE FROM [temp_table2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [temp_table2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [temp_table1]

