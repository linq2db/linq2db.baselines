BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	LEAD(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	LEAD(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	LAG(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	LAG(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

