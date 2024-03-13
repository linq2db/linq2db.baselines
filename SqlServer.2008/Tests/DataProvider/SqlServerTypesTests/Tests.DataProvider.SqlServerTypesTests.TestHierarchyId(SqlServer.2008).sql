BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar -- String
SET     @p = '/1/3/4/'
DECLARE @p_1 NVarChar -- String
SET     @p_1 = '/1/3/5/'
DECLARE @p_2 NVarChar -- String
SET     @p_2 = '/1/'
DECLARE @p_3 NVarChar -- String
SET     @p_3 = '/2/'
DECLARE @p_4 NVarChar -- String
SET     @p_4 = '/1/2/3/4/5/'

SELECT
	hierarchyid::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(hierarchyid::Parse(@p), hierarchyid::Parse(@p_1)),
	[t].[hierarchyidDataType].IsDescendantOf(hierarchyid::Parse(@p_2)),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(hierarchyid::Parse(@p_2), hierarchyid::Parse(@p_3)),
	hierarchyid::Parse(@p_4),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

