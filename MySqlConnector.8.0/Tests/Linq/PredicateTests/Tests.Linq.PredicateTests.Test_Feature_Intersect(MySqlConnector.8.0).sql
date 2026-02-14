-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Null` as `Null_1`
		INTERSECT
		SELECT
			`r`.`Null` as `Null_1`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Zero` as `One`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Null` as `One`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Null` as `Zero`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Null` as `Null_1`
		INTERSECT
		SELECT
			`r`.`Null` as `Null_1`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Zero` as `One`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Null` as `One`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
			`r`.`Null` as `Zero`
	)

