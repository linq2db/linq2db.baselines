-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Status  -- Int32
SET     @Status = 1
DECLARE @Color  -- Int32
SET     @Color = 0
DECLARE @CMYKColor  -- Int32
SET     @CMYKColor = 0

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[Color],
	[CMYKColor]
)
VALUES
(
	@Id,
	@Status,
	@Color,
	@CMYKColor
)

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Status],
	[x].[Color],
	[x].[CMYKColor]
FROM
	[InventoryResourceDTO] [x]
WHERE
	CASE
		WHEN 0 = [x].[Color] THEN 'Blue'
		WHEN 10 = [x].[Color] THEN 'Red'
		WHEN 20 = [x].[Color] THEN 'Green'
		ELSE NULL
	END LIKE '%Bl%' ESCAPE '~' AND
	CASE
		WHEN 0 = [x].[CMYKColor] THEN 'Cyan'
		WHEN 10 = [x].[CMYKColor] THEN 'Magenta'
		WHEN 20 = [x].[CMYKColor] THEN 'Yellow'
		WHEN 40 = [x].[CMYKColor] THEN 'Black'
		ELSE NULL
	END LIKE '%Cya%' ESCAPE '~' AND
	CASE
		WHEN [x].[Status] = 3 THEN 'Done'
		WHEN [x].[Status] = 1 THEN 'Open'
		WHEN [x].[Status] = 2 THEN 'InProgress'
		ELSE 'Unknown'
	END LIKE '%en%' ESCAPE '~'

