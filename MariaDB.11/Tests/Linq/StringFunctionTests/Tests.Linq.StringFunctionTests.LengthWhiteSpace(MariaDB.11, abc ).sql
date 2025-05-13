BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @stringValue VarChar(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 Int32
SET     @stringValue_1 = 5

SELECT
	@stringValue as `c1`,
	@stringValue_1 as `c2`

