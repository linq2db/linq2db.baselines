-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @min Int64
SET     @min = -9223372036854775808

SELECT
	CAST(@min AS SIGNED) as `c1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @max Int64
SET     @max = 9223372036854775807

SELECT
	CAST(@max AS SIGNED) as `c1`

