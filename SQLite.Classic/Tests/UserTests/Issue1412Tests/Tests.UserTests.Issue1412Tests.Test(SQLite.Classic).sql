BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourceTypeDTO]
(
	[Id]        Guid          NOT NULL,
	[Name]      NVarChar(255)     NULL,
	[ShortName] NVarChar(255)     NULL,
	[Height]    INTEGER       NOT NULL,
	[Depth]     INTEGER       NOT NULL,
	[Width]     INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WmsResourceTypeDTO]
(
	[Id],
	[Name],
	[ShortName],
	[Height],
	[Depth],
	[Width]
)
VALUES
(X'3D667BBCDE0F27438F925D8CC3A11D11','Resource Name','RN',110,256,333)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]                          Guid          NOT NULL,
	[Status]                      INTEGER       NOT NULL,
	[ResourceLabel]               NVarChar(255)     NULL,
	[ResourceLabelNVE]            NVarChar(255)     NULL,
	[ParentResourceID]            Guid              NULL,
	[TypeID]                      Guid              NULL,
	[HeightClass]                 INTEGER           NULL,
	[CurrentWeightOfResource]     Decimal           NULL,
	[WidthClass]                  INTEGER           NULL,
	[LengthClass]                 INTEGER           NULL,
	[OriginalResourceID]          Guid              NULL,
	[LastGlobalTaskID]            Guid              NULL,
	[WashingDate]                 DateTime2         NULL,
	[ResourcePointID]             Guid              NULL,
	[Height]                      Decimal           NULL,
	[Width]                       Decimal           NULL,
	[Length]                      Decimal           NULL,
	[TechnicalValues]             NVarChar(255)     NULL,
	[RearrangementCount]          INTEGER       NOT NULL,
	[IsVirtual]                   Bit           NOT NULL,
	[ErrorMessage]                NVarChar(255)     NULL,
	[FillingDegree]               Decimal           NULL,
	[LastInventoryCheckTimeStamp] DateTime2         NULL,
	[Segmentation]                NVarChar(255)     NULL,
	[DontTouch]                   Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WmsLoadCarrierDTO]
(
	[Id],
	[Status],
	[ResourceLabel],
	[ResourceLabelNVE],
	[ParentResourceID],
	[TypeID],
	[HeightClass],
	[CurrentWeightOfResource],
	[WidthClass],
	[LengthClass],
	[OriginalResourceID],
	[LastGlobalTaskID],
	[WashingDate],
	[ResourcePointID],
	[Height],
	[Width],
	[Length],
	[TechnicalValues],
	[RearrangementCount],
	[IsVirtual],
	[ErrorMessage],
	[FillingDegree],
	[LastInventoryCheckTimeStamp],
	[Segmentation],
	[DontTouch]
)
VALUES
(X'0D6048A921DE744F8AC29516B287076E',0,NULL,NULL,NULL,X'3D667BBCDE0F27438F925D8CC3A11D11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_ResourceA]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WMS_ResourceA]
(
	[Id]                          Guid          NOT NULL,
	[Status]                      INTEGER       NOT NULL,
	[ResourceLabel]               NVarChar(255)     NULL,
	[ResourceLabelNVE]            NVarChar(255)     NULL,
	[ParentResourceID]            Guid              NULL,
	[TypeID]                      Guid              NULL,
	[HeightClass]                 INTEGER           NULL,
	[CurrentWeightOfResource]     Decimal           NULL,
	[WidthClass]                  INTEGER           NULL,
	[LengthClass]                 INTEGER           NULL,
	[OriginalResourceID]          Guid              NULL,
	[LastGlobalTaskID]            Guid              NULL,
	[WashingDate]                 DateTime2         NULL,
	[ResourcePointID]             Guid              NULL,
	[Height]                      Decimal           NULL,
	[Width]                       Decimal           NULL,
	[Length]                      Decimal           NULL,
	[TechnicalValues]             NVarChar(255)     NULL,
	[RearrangementCount]          INTEGER       NOT NULL,
	[IsVirtual]                   Bit           NOT NULL,
	[ErrorMessage]                NVarChar(255)     NULL,
	[FillingDegree]               Decimal           NULL,
	[LastInventoryCheckTimeStamp] DateTime2         NULL,
	[Segmentation]                NVarChar(255)     NULL,
	[DontTouch]                   Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WMS_ResourceA]
(
	[Id],
	[Status],
	[ResourceLabel],
	[ResourceLabelNVE],
	[ParentResourceID],
	[TypeID],
	[HeightClass],
	[CurrentWeightOfResource],
	[WidthClass],
	[LengthClass],
	[OriginalResourceID],
	[LastGlobalTaskID],
	[WashingDate],
	[ResourcePointID],
	[Height],
	[Width],
	[Length],
	[TechnicalValues],
	[RearrangementCount],
	[IsVirtual],
	[ErrorMessage],
	[FillingDegree],
	[LastInventoryCheckTimeStamp],
	[Segmentation],
	[DontTouch]
)
VALUES
(X'A57339BD2343D84D9F4FDF9F93E2A627',0,NULL,NULL,NULL,X'3D667BBCDE0F27438F925D8CC3A11D11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,0)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t2].[Id],
	[t2].[Status],
	[t2].[ResourceLabel],
	[t2].[ResourceLabelNVE],
	[t2].[ParentResourceID],
	[t2].[TypeID],
	[t2].[HeightClass],
	[t2].[CurrentWeightOfResource],
	[t2].[WidthClass],
	[t2].[LengthClass],
	[t2].[OriginalResourceID],
	[t2].[LastGlobalTaskID],
	[t2].[WashingDate],
	[t2].[ResourcePointID],
	[t2].[Height],
	[t2].[Width],
	[t2].[Length_1],
	[t2].[TechnicalValues],
	[t2].[RearrangementCount],
	[t2].[IsVirtual],
	[t2].[ErrorMessage],
	[t2].[FillingDegree],
	[t2].[LastInventoryCheckTimeStamp],
	[t2].[Segmentation],
	[t2].[DontTouch],
	[tp].[Id],
	[tp].[Name],
	[tp].[ShortName],
	[tp].[Height],
	[tp].[Depth],
	[tp].[Width]
FROM
	(
		SELECT
			[res].[Id],
			[res].[Status],
			[res].[ResourceLabel],
			[res].[ResourceLabelNVE],
			[res].[ParentResourceID],
			[res].[TypeID],
			[res].[HeightClass],
			[res].[CurrentWeightOfResource],
			[res].[WidthClass],
			[res].[LengthClass],
			[res].[OriginalResourceID],
			[res].[LastGlobalTaskID],
			[res].[WashingDate],
			[res].[ResourcePointID],
			[res].[Height],
			[res].[Width],
			[res].[Length] as [Length_1],
			[res].[TechnicalValues],
			[res].[RearrangementCount],
			[res].[IsVirtual],
			[res].[ErrorMessage],
			[res].[FillingDegree],
			[res].[LastInventoryCheckTimeStamp],
			[res].[Segmentation],
			[res].[DontTouch]
		FROM
			[WmsLoadCarrierDTO] [res]
		UNION
		SELECT
			[t1].[Id],
			[t1].[Status],
			[t1].[ResourceLabel],
			[t1].[ResourceLabelNVE],
			[t1].[ParentResourceID],
			[t1].[TypeID],
			[t1].[HeightClass],
			[t1].[CurrentWeightOfResource],
			[t1].[WidthClass],
			[t1].[LengthClass],
			[t1].[OriginalResourceID],
			[t1].[LastGlobalTaskID],
			[t1].[WashingDate],
			[t1].[ResourcePointID],
			[t1].[Height],
			[t1].[Width],
			[t1].[Length] as [Length_1],
			[t1].[TechnicalValues],
			[t1].[RearrangementCount],
			[t1].[IsVirtual],
			[t1].[ErrorMessage],
			[t1].[FillingDegree],
			[t1].[LastInventoryCheckTimeStamp],
			[t1].[Segmentation],
			[t1].[DontTouch]
		FROM
			[WMS_ResourceA] [t1]
	) [t2]
		LEFT JOIN [WmsResourceTypeDTO] [tp] ON [t2].[TypeID] = [tp].[Id] AND [t2].[TypeID] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_ResourceA]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

