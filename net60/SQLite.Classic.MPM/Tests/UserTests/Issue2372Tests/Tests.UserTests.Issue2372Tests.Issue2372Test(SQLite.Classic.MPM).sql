﻿BeforeExecute
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

