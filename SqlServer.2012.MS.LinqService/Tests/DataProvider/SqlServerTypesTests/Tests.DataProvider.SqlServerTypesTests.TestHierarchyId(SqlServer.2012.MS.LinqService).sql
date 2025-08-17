BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	hierarchyid::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(hierarchyid::Parse('/1/3/4/'), hierarchyid::Parse('/1/3/5/')),
	[t].[hierarchyidDataType].IsDescendantOf(hierarchyid::Parse('/1/')),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(hierarchyid::Parse('/1/'), hierarchyid::Parse('/2/')),
	hierarchyid::Parse('/1/2/3/4/5/'),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

