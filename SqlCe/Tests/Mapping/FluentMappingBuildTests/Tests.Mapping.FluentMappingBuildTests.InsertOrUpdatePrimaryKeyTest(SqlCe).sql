-- SqlCe

DROP TABLE [FluentTemp]

-- SqlCe

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY ([ID])
)

-- SqlCe
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

-- SqlCe

UPDATE
	[FluentTemp]
SET
	[ID] = [FluentTemp].[ID],
	[Name] = [FluentTemp].[Name]
WHERE
	[FluentTemp].[ID] = 1

-- SqlCe

DROP TABLE [FluentTemp]

