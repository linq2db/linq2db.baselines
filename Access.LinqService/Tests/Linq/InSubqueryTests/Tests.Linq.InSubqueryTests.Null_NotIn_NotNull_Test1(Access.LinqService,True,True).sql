BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_in_1]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [test_in_1]
(
	[ID] Int     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 3

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = NULL

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_in_2]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [test_in_2]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	([t].[ID] IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	))

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_in_2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_in_1]

