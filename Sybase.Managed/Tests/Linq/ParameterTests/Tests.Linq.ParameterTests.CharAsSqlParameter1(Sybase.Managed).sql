-- Sybase.Managed Sybase
DECLARE @s1 UniVarChar(7) -- String
SET     @s1 = '0 ' + char(0) + ' '' 0'

SELECT
	@s1

