BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @date_1 NVarChar(4000) -- String
SET     @date_1 = N'2022-02-24'

SELECT
	MONTH(@date_1)

