-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`One`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Null`
		INTERSECT
		SELECT
			`r`.`Null`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Null`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Null`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`One`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Null`
		INTERSECT
		SELECT
			`r`.`Null`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Null`
	)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Null`
	)

