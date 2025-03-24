BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @stringValue VarChar(4) -- String
SET     @stringValue = 'abc '

SELECT
	@stringValue as `c1`,
	CHAR_LENGTH(@stringValue) as `c2`

