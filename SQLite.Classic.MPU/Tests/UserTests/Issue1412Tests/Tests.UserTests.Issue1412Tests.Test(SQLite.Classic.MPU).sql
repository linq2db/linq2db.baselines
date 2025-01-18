BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
		LEFT JOIN [WmsResourceTypeDTO] [tp] ON [t2].[TypeID] = [tp].[Id]

