BeforeExecute
-- SqlServer.2012
DECLARE @date_1 NVarChar(4000) -- String
SET     @date_1 = N'2022-02-24'

SELECT
	EOMONTH(@date_1, 1)

