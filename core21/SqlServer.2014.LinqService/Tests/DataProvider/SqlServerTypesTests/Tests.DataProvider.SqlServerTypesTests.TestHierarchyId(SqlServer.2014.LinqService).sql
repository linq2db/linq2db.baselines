BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	HierarchyId::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(HierarchyId::Parse('/1/3/4/'), HierarchyId::Parse('/1/3/5/')),
	[t].[hierarchyidDataType].IsDescendantOf(HierarchyId::Parse('/1/')),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(HierarchyId::Parse('/1/'), HierarchyId::Parse('/2/')),
	HierarchyId::Parse('/1/2/3/4/5/'),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

