BeforeExecute
-- SqlServer.2005
DECLARE @date_1 NVarChar(4000) -- String
SET     @date_1 = N'2022-02-24'

SELECT
	MONTH(@date_1)

