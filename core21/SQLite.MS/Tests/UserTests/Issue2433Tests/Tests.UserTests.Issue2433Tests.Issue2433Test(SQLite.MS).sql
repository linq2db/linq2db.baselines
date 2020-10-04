BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [InventoryResourceDTO]
(
	[Id]                Guid      NOT NULL,
	[Status]            INTEGER   NOT NULL,
	[ResourceID]        Guid      NOT NULL,
	[ModifiedTimeStamp] DateTime2     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(Cast(x'0d6048a921de744f8ac29516b287076e' as blob),40,Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob),'2020-02-29 15:54:55.123')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [InventoryResourceDTO]

