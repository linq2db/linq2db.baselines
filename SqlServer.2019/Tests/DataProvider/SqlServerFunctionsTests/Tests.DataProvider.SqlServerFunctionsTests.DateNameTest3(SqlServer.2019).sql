-- SqlServer.2019
SELECT
	DATENAME(Month, ToDateTimeOffset(DATETIME2FROMPARTS(2022, 3, 22, 0, 0, 0, 0, 3), N'+00:00'))

