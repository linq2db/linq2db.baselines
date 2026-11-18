-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
(
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

