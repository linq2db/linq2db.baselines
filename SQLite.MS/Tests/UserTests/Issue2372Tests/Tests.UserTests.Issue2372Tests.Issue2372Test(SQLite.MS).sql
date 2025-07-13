BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResource]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Guid
SET     @Id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Status NVarChar(4) -- String
SET     @Status = 'Used'

INSERT INTO [InventoryResource]
(
	[Id],
	[Status]
)
VALUES
(
	@Id,
	@Status
)

