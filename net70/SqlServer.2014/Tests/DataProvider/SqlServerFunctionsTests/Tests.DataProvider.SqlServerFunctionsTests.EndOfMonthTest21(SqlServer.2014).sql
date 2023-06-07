BeforeExecute
-- SqlServer.2014
DECLARE @date NVarChar(4000) -- String
SET     @date = N'2022-02-24'

SELECT
	EOMONTH(@date, 1)

