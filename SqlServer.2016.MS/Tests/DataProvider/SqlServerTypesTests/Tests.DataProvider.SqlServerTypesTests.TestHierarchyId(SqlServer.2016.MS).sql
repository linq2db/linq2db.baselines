-- SqlServer.2016.MS SqlServer.2016
SELECT
	hierarchyid::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(hierarchyid::Parse(N'/1/3/4/'), hierarchyid::Parse(N'/1/3/5/')),
	[t].[hierarchyidDataType].IsDescendantOf(hierarchyid::Parse(N'/1/')),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(hierarchyid::Parse(N'/1/'), hierarchyid::Parse(N'/2/')),
	hierarchyid::Parse(N'/1/2/3/4/5/'),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

