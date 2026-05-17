-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS NOT FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS NOT FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS NOT FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS NOT FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS NOT FALSE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS NOT FALSE

