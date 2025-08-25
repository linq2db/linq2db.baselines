BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [FluentTemp]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- SqlCe (asynchronously)

UPDATE
	[FluentTemp]
SET
	[ID] = [FluentTemp].[ID],
	[Name] = [FluentTemp].[Name]
WHERE
	[FluentTemp].[ID] = 1

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [FluentTemp]

