﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @VarBinary VarBinary -- Binary
SET     @VarBinary = Tests.Linq.ParameterTests+VarBinary

INSERT INTO [AllTypesCustomMaxLength]
(
	[VarBinary]
)
VALUES
(
	@VarBinary
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[VarBinary],
	[t1].[VarChar],
	[t1].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p VarBinary -- Binary
SET     @p = Tests.Linq.ParameterTests+VarBinary

SELECT
	[t].[VarBinary],
	[t].[VarChar],
	[t].[NVarChar]
FROM
	[AllTypesCustomMaxLength] [t]
WHERE
	[t].[VarBinary] = @p

