BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[Id]                Guid      NOT NULL,
	[Status]            INTEGER   NOT NULL,
	[ResourceID]        Guid      NOT NULL,
	[ModifiedTimeStamp] DateTime2     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(X'0D6048A921DE744F8AC29516B287076E',40,X'3D667BBCDE0F27438F925D8CC3A11D11','2020-02-29 15:54:55.123')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

