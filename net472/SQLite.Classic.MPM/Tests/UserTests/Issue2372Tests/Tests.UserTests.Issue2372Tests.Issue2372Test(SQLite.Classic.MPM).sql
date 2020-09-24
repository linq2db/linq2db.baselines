BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResource]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [InventoryResource]
(
	[Id]     Guid     NOT NULL,
	[Status] NVarChar NOT NULL,

	CONSTRAINT [PK_InventoryResource] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)
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

