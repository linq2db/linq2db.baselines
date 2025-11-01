-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`One`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Zero`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Null` <=> `r`.`Null`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Zero`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Null`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Null`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`One`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Zero`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Null` <=> `r`.`Null`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Zero`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Null`)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Null`)

