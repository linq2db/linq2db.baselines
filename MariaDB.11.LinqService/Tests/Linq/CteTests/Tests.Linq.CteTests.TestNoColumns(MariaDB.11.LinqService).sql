﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Child` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE1_` (`c1`)
AS
(
	SELECT
		1
	FROM
		`Child` `t1`
)
SELECT
	COUNT(*)
FROM
	`CTE1_` `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE1_` (`c1`)
AS
(
	SELECT
		1
	FROM
		`Child` `c_1`
)
SELECT
	COUNT(*)
FROM
	`CTE1_` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH `CTE1_` (`c1`)
AS
(
	SELECT
		1 as `c1`
	FROM
		`Child` `c_1`
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`CTE1_` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

