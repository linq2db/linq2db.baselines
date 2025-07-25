﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Null`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`One` = `r`.`Zero` OR `r`.`One` IS NULL AND `r`.`Zero` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`One` = `r`.`Null` OR `r`.`One` IS NULL AND `r`.`Null` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`Zero` = `r`.`Null` OR `r`.`Zero` IS NULL AND `r`.`Null` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Null`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`One` = `r`.`Zero` OR `r`.`One` IS NULL AND `r`.`Zero` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`One` = `r`.`Null` OR `r`.`One` IS NULL AND `r`.`Null` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		FROM DUAL
		WHERE
			EXISTS(
				SELECT
					1
				FROM DUAL
				WHERE
					`r`.`Zero` = `r`.`Null` OR `r`.`Zero` IS NULL AND `r`.`Null` IS NULL
			)
	)

