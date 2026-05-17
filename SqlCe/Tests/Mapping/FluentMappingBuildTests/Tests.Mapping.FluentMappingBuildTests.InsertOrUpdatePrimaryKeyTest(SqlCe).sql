-- SqlCe

DROP TABLE [FluentTemp_InsertOrUpdate]

-- SqlCe

CREATE TABLE [FluentTemp_InsertOrUpdate]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY ([ID])
)

-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

-- SqlCe

UPDATE
	[FluentTemp_InsertOrUpdate]
SET
	[ID] = [FluentTemp_InsertOrUpdate].[ID],
	[Name] = [FluentTemp_InsertOrUpdate].[Name]
WHERE
	[FluentTemp_InsertOrUpdate].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp_InsertOrUpdate]

