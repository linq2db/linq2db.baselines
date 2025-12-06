-- SqlServer.SA.MS SqlServer.2019
DECLARE @NVarChar NVarChar -- String
SET     @NVarChar = Tests.Linq.ParameterTests+NVarChar

INSERT INTO [AllTypesCustomMaxLength]
(
	[NVarChar]
)
VALUES
(
	@NVarChar
)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @p NVarChar -- String
SET     @p = Tests.Linq.ParameterTests+NVarChar

SELECT
	[t].[VarBinary],
	[t].[VarChar],
	[t].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t]
WHERE
	[t].[NVarChar] = @p

