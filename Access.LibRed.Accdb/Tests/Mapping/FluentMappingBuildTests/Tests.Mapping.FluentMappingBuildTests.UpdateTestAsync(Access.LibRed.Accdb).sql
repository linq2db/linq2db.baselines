-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [FluentTemp_UpdateAsync]
(
	[ID]       Int          NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_UpdateAsync] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_UpdateAsync]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_UpdateAsync] [t]
SET
	[t].[Value] = @Name,
	[t].[LastName] = @LastName
WHERE
	[t].[ID] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [FluentTemp_UpdateAsync]

