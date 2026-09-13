-- SqlServer.2025
DECLARE @p NVarChar(4000) -- String
SET     @p = N'{ "prop1": 123 }'

SELECT CAST(@p AS NVARCHAR(MAX))

