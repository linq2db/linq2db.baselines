-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [FluentTemp_Update]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Update] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Update]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_Update] [t]
SET
	[t].[Value] = @Name,
	[t].[LastName] = @LastName
WHERE
	[t].[ID] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [FluentTemp_Update]

