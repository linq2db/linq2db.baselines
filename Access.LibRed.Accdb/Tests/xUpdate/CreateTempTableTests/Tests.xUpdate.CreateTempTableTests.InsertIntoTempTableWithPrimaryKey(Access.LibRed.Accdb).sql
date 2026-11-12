-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY CLUSTERED ([Key])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Key  -- Int32
SET     @Key = 1

INSERT INTO [TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(
	@Key
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TableWithPrimaryKey2]

