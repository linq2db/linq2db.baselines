-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
WHERE
	@testedList = [t].[Value2]

