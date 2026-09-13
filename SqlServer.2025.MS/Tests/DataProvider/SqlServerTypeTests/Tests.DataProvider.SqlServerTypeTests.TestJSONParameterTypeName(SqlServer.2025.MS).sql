-- SqlServer.2025.MS SqlServer.2025
DECLARE @p Json(16) -- String
SET     @p = N'{ "prop1": 123 }'

SELECT CAST(@p AS NVARCHAR(MAX))

