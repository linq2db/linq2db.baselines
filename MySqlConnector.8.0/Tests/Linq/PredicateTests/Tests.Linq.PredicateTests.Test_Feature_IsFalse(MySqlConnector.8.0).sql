-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS NOT FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS NOT FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS NOT FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS NOT FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS NOT FALSE

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS NOT FALSE

