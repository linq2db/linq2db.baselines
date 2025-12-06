-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	LEAD(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	LEAD(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	LAG(`p`.`ProcessName`, 2) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	LAG(`p`.`ProcessName`) OVER(ORDER BY `p`.`ProcessID`)
FROM
	`Issue1799Table3` `p`

