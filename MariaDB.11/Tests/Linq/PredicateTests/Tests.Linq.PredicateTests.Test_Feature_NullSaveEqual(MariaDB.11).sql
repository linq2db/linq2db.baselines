-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`One`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Zero`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Null` <=> `r`.`Null`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Zero`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Null`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Null`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`One`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Zero`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Null` <=> `r`.`Null`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Zero`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Null`)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Null`)

