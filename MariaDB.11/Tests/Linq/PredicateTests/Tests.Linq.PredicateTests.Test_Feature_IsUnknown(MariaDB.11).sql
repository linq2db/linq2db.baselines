-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS NOT UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS NOT UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS NOT UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS NOT UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS NOT UNKNOWN

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS NOT UNKNOWN

