BeforeExecute
-- SqlServer.2008
DECLARE @v2 NVarChar -- String
SET     @v2 = '/1/3/4/'
DECLARE @v2_1 NVarChar -- String
SET     @v2_1 = '/1/3/5/'
DECLARE @v3 NVarChar -- String
SET     @v3 = '/1/'
DECLARE @v6 NVarChar -- String
SET     @v6 = '/2/'
DECLARE @v7 NVarChar -- String
SET     @v7 = '/1/2/3/4/5/'

SELECT
	hierarchyid::GetRoot(),
	[t].[hierarchyidDataType].GetDescendant(hierarchyid::Parse(@v2), hierarchyid::Parse(@v2_1)),
	[t].[hierarchyidDataType].IsDescendantOf(hierarchyid::Parse(@v3)),
	[t].[hierarchyidDataType].GetLevel(),
	[t].[hierarchyidDataType].GetAncestor(0),
	[t].[hierarchyidDataType].GetReparentedValue(hierarchyid::Parse(@v3), hierarchyid::Parse(@v6)),
	hierarchyid::Parse(@v7),
	[t].[hierarchyidDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[hierarchyidDataType].GetLevel() > 0

