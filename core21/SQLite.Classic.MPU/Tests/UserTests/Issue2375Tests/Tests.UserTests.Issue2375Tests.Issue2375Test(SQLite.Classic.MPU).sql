BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [InventoryResourceDTO]
(
	[Id]                Guid      NOT NULL,
	[Status]            INTEGER   NOT NULL,
	[ResourceID]        Guid      NOT NULL,
	[ModifiedTimeStamp] DateTime2     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [WmsLoadCarrierDTO]
(
	[Id]            Guid          NOT NULL,
	[ResourceLabel] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)
DECLARE @ResourceLabel NVarChar(1) -- String
SET     @ResourceLabel = 'b'

INSERT INTO [WmsLoadCarrierDTO]
(
	[Id],
	[ResourceLabel]
)
VALUES
(
	@Id,
	@ResourceLabel
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = Cast(x'0d6048a921de744f8ac29516b287076e' as blob)
DECLARE @Status  -- Int32
SET     @Status = 40
DECLARE @ResourceID  -- Guid
SET     @ResourceID = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)
DECLARE @ModifiedTimeStamp  -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(
	@Id,
	@Status,
	@ResourceID,
	@ModifiedTimeStamp
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Guid
SET     @Id = Cast(x'a57339bd2343d84d9f4fdf9f93e2a627' as blob)
DECLARE @Status  -- Int32
SET     @Status = 40
DECLARE @ResourceID  -- Guid
SET     @ResourceID = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)
DECLARE @ModifiedTimeStamp  -- DateTime
SET     @ModifiedTimeStamp = '2020-02-29 15:54:55.123'

INSERT INTO [InventoryResourceDTO]
(
	[Id],
	[Status],
	[ResourceID],
	[ModifiedTimeStamp]
)
VALUES
(
	@Id,
	@Status,
	@ResourceID,
	@ModifiedTimeStamp
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[inventory].[Status],
	[lc].[ResourceLabel]
FROM
	[InventoryResourceDTO] [inventory]
		INNER JOIN [WmsLoadCarrierDTO] [lc] ON [inventory].[ResourceID] = [lc].[Id]
GROUP BY
	[inventory].[Status],
	[lc].[ResourceLabel]
HAVING
	Count(*) > 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Status_1  -- Int32
SET     @Status_1 = 40
DECLARE @ResourceLabel NVarChar(1) -- String
SET     @ResourceLabel = 'b'

SELECT
	[inventory].[Id],
	[inventory].[Status],
	[inventory].[ResourceID],
	[inventory].[ModifiedTimeStamp]
FROM
	[InventoryResourceDTO] [inventory]
		INNER JOIN [WmsLoadCarrierDTO] [lc] ON [inventory].[ResourceID] = [lc].[Id]
WHERE
	([inventory].[Status] = @Status_1 AND [lc].[ResourceLabel] = @ResourceLabel)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [InventoryResourceDTO]

