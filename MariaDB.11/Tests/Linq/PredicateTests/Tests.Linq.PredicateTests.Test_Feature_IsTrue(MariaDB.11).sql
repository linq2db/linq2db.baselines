-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS NOT TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS NOT TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS NOT TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS NOT TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS NOT TRUE

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS NOT TRUE

