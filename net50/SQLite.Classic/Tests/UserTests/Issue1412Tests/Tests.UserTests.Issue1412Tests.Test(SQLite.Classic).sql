BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsResourceTypeDTO]
(
	[Id]        Guid          NOT NULL,
	[Width]     INTEGER       NOT NULL,
	[Depth]     INTEGER       NOT NULL,
	[Height]    INTEGER       NOT NULL,
	[ShortName] NVarChar(255)     NULL,
	[Name]      NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WmsResourceTypeDTO]
(
	[Id],
	[Width],
	[Depth],
	[Height],
	[ShortName],
	[Name]
)
VALUES
(Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob),333,256,110,'RN','Resource Name')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WmsLoadCarrierDTO]
(
	[Id]                          Guid          NOT NULL,
	[DontTouch]                   Bit           NOT NULL,
	[Segmentation]                NVarChar(255)     NULL,
	[LastInventoryCheckTimeStamp] DateTime2         NULL,
	[FillingDegree]               Decimal           NULL,
	[ErrorMessage]                NVarChar(255)     NULL,
	[IsVirtual]                   Bit           NOT NULL,
	[RearrangementCount]          INTEGER       NOT NULL,
	[TechnicalValues]             NVarChar(255)     NULL,
	[Length]                      Decimal           NULL,
	[Width]                       Decimal           NULL,
	[Height]                      Decimal           NULL,
	[ResourcePointID]             Guid              NULL,
	[WashingDate]                 DateTime2         NULL,
	[LastGlobalTaskID]            Guid              NULL,
	[OriginalResourceID]          Guid              NULL,
	[LengthClass]                 INTEGER           NULL,
	[WidthClass]                  INTEGER           NULL,
	[CurrentWeightOfResource]     Decimal           NULL,
	[HeightClass]                 INTEGER           NULL,
	[TypeID]                      Guid              NULL,
	[ParentResourceID]            Guid              NULL,
	[ResourceLabelNVE]            NVarChar(255)     NULL,
	[ResourceLabel]               NVarChar(255)     NULL,
	[Status]                      INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WmsLoadCarrierDTO]
(
	[Id],
	[DontTouch],
	[Segmentation],
	[LastInventoryCheckTimeStamp],
	[FillingDegree],
	[ErrorMessage],
	[IsVirtual],
	[RearrangementCount],
	[TechnicalValues],
	[Length],
	[Width],
	[Height],
	[ResourcePointID],
	[WashingDate],
	[LastGlobalTaskID],
	[OriginalResourceID],
	[LengthClass],
	[WidthClass],
	[CurrentWeightOfResource],
	[HeightClass],
	[TypeID],
	[ParentResourceID],
	[ResourceLabelNVE],
	[ResourceLabel],
	[Status]
)
VALUES
(Cast(x'0d6048a921de744f8ac29516b287076e' as blob),0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob),NULL,NULL,NULL,0)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_ResourceA]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WMS_ResourceA]
(
	[Id]                          Guid          NOT NULL,
	[DontTouch]                   Bit           NOT NULL,
	[Segmentation]                NVarChar(255)     NULL,
	[LastInventoryCheckTimeStamp] DateTime2         NULL,
	[FillingDegree]               Decimal           NULL,
	[ErrorMessage]                NVarChar(255)     NULL,
	[IsVirtual]                   Bit           NOT NULL,
	[RearrangementCount]          INTEGER       NOT NULL,
	[TechnicalValues]             NVarChar(255)     NULL,
	[Length]                      Decimal           NULL,
	[Width]                       Decimal           NULL,
	[Height]                      Decimal           NULL,
	[ResourcePointID]             Guid              NULL,
	[WashingDate]                 DateTime2         NULL,
	[LastGlobalTaskID]            Guid              NULL,
	[OriginalResourceID]          Guid              NULL,
	[LengthClass]                 INTEGER           NULL,
	[WidthClass]                  INTEGER           NULL,
	[CurrentWeightOfResource]     Decimal           NULL,
	[HeightClass]                 INTEGER           NULL,
	[TypeID]                      Guid              NULL,
	[ParentResourceID]            Guid              NULL,
	[ResourceLabelNVE]            NVarChar(255)     NULL,
	[ResourceLabel]               NVarChar(255)     NULL,
	[Status]                      INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [WMS_ResourceA]
(
	[Id],
	[DontTouch],
	[Segmentation],
	[LastInventoryCheckTimeStamp],
	[FillingDegree],
	[ErrorMessage],
	[IsVirtual],
	[RearrangementCount],
	[TechnicalValues],
	[Length],
	[Width],
	[Height],
	[ResourcePointID],
	[WashingDate],
	[LastGlobalTaskID],
	[OriginalResourceID],
	[LengthClass],
	[WidthClass],
	[CurrentWeightOfResource],
	[HeightClass],
	[TypeID],
	[ParentResourceID],
	[ResourceLabelNVE],
	[ResourceLabel],
	[Status]
)
VALUES
(Cast(x'a57339bd2343d84d9f4fdf9f93e2a627' as blob),0,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob),NULL,NULL,NULL,0)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[res].[Id],
	[res].[DontTouch],
	[res].[Segmentation],
	[res].[LastInventoryCheckTimeStamp],
	[res].[FillingDegree],
	[res].[ErrorMessage],
	[res].[IsVirtual],
	[res].[RearrangementCount],
	[res].[TechnicalValues],
	[res].[Length_1],
	[res].[Width],
	[res].[Height],
	[res].[ResourcePointID],
	[res].[WashingDate],
	[res].[LastGlobalTaskID],
	[res].[OriginalResourceID],
	[res].[LengthClass],
	[res].[WidthClass],
	[res].[CurrentWeightOfResource],
	[res].[HeightClass],
	[res].[TypeID],
	[res].[ParentResourceID],
	[res].[ResourceLabelNVE],
	[res].[ResourceLabel],
	[res].[Status],
	[tpList].[Id],
	[tpList].[Width],
	[tpList].[Depth],
	[tpList].[Height],
	[tpList].[ShortName],
	[tpList].[Name]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[DontTouch],
			[t1].[Segmentation],
			[t1].[LastInventoryCheckTimeStamp],
			[t1].[FillingDegree],
			[t1].[ErrorMessage],
			[t1].[IsVirtual],
			[t1].[RearrangementCount],
			[t1].[TechnicalValues],
			[t1].[Length] as [Length_1],
			[t1].[Width],
			[t1].[Height],
			[t1].[ResourcePointID],
			[t1].[WashingDate],
			[t1].[LastGlobalTaskID],
			[t1].[OriginalResourceID],
			[t1].[LengthClass],
			[t1].[WidthClass],
			[t1].[CurrentWeightOfResource],
			[t1].[HeightClass],
			[t1].[TypeID],
			[t1].[ParentResourceID],
			[t1].[ResourceLabelNVE],
			[t1].[ResourceLabel],
			[t1].[Status]
		FROM
			[WmsLoadCarrierDTO] [t1]
		UNION
		SELECT
			[t2].[Id],
			[t2].[DontTouch],
			[t2].[Segmentation],
			[t2].[LastInventoryCheckTimeStamp],
			[t2].[FillingDegree],
			[t2].[ErrorMessage],
			[t2].[IsVirtual],
			[t2].[RearrangementCount],
			[t2].[TechnicalValues],
			[t2].[Length] as [Length_1],
			[t2].[Width],
			[t2].[Height],
			[t2].[ResourcePointID],
			[t2].[WashingDate],
			[t2].[LastGlobalTaskID],
			[t2].[OriginalResourceID],
			[t2].[LengthClass],
			[t2].[WidthClass],
			[t2].[CurrentWeightOfResource],
			[t2].[HeightClass],
			[t2].[TypeID],
			[t2].[ParentResourceID],
			[t2].[ResourceLabelNVE],
			[t2].[ResourceLabel],
			[t2].[Status]
		FROM
			[WMS_ResourceA] [t2]
	) [res]
		LEFT JOIN [WmsResourceTypeDTO] [tpList] ON [res].[TypeID] = [tpList].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WMS_ResourceA]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsLoadCarrierDTO]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WmsResourceTypeDTO]

