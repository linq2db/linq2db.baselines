BeforeExecute
-- SqlServer.2005
DECLARE @p VarChar(20) -- AnsiString
SET     @p = N'abc'

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarcharDataType] = @p

BeforeExecute
-- SqlServer.2005
DECLARE @VarChar VarChar -- AnsiString
SET     @VarChar = Tests.Linq.ParameterTests+VarChar

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarChar]
)
VALUES
(
	@VarChar
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @p VarChar -- AnsiString
SET     @p = Tests.Linq.ParameterTests+VarChar

SELECT
	[t].[VarBinary],
	[t].[VarChar],
	[t].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t]
WHERE
	[t].[VarChar] = @p

