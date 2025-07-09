BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @date NVarChar(4000) -- String
SET     @date = N'2022-02-24'

SELECT
	EOMONTH(@date, 1)

