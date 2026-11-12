-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [FluentTemp_InsertOrUpdate]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [FluentTemp_InsertOrUpdate]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[FluentTemp_InsertOrUpdate] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [FluentTemp_InsertOrUpdate]

