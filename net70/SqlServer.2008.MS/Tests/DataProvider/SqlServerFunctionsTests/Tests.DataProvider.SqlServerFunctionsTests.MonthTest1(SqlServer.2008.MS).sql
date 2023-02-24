BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @date_1 NVarChar(4000) -- String
SET     @date_1 = N'2022-02-24'

SELECT
	MONTH(@date_1)

