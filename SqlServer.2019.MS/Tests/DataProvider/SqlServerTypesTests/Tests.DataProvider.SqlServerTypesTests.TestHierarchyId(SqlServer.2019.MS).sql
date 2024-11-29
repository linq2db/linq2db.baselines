BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p NVarChar -- String
SET     @p = '/1/'
DECLARE @p_1 NVarChar -- String
SET     @p_1 = '/2/'
DECLARE @p_2 NVarChar -- String
SET     @p_2 = '/1/2/3/4/5/'

SELECT
	hierarchyid::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(hierarchyid::Parse('/1/3/4/'), hierarchyid::Parse('/1/3/5/')),
	[t].[hierarchyidDataType].IsDescendantOf(hierarchyid::Parse(@p)),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(hierarchyid::Parse(@p), hierarchyid::Parse(@p_1)),
	hierarchyid::Parse(@p_2),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

