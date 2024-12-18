BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FeatureTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `FeatureTable`
(
	`Id`       INT     NOT NULL,
	`One`      INT         NULL,
	`Zero`     INT         NULL,
	`Null`     INT         NULL,
	`True`     BOOLEAN     NULL,
	`False`    BOOLEAN     NULL,
	`BoolNull` BOOLEAN     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `FeatureTable`
(
	`Id`,
	`One`,
	`Zero`,
	`Null`,
	`True`,
	`False`,
	`BoolNull`
)
VALUES
(1,1,0,NULL,1,0,NULL)

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
					`r`.`One` = `r`.`One` AND `r`.`One` IS NOT NULL AND `r`.`One` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`One` IS NULL
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
					`r`.`Zero` = `r`.`Zero` AND `r`.`Zero` IS NOT NULL AND `r`.`Zero` IS NOT NULL OR
					`r`.`Zero` IS NULL AND `r`.`Zero` IS NULL
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
				WHERE
					`r`.`Null` = `r`.`Null` AND `r`.`Null` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`Null` IS NULL AND `r`.`Null` IS NULL
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
					`r`.`One` = `r`.`Zero` AND `r`.`One` IS NOT NULL AND `r`.`Zero` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`Zero` IS NULL
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
					`r`.`One` = `r`.`Null` AND `r`.`One` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`Null` IS NULL
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
					`r`.`Zero` = `r`.`Null` AND `r`.`Zero` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`Zero` IS NULL AND `r`.`Null` IS NULL
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
					`r`.`One` = `r`.`One` AND `r`.`One` IS NOT NULL AND `r`.`One` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`One` IS NULL
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
					`r`.`Zero` = `r`.`Zero` AND `r`.`Zero` IS NOT NULL AND `r`.`Zero` IS NOT NULL OR
					`r`.`Zero` IS NULL AND `r`.`Zero` IS NULL
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
				WHERE
					`r`.`Null` = `r`.`Null` AND `r`.`Null` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`Null` IS NULL AND `r`.`Null` IS NULL
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
					`r`.`One` = `r`.`Zero` AND `r`.`One` IS NOT NULL AND `r`.`Zero` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`Zero` IS NULL
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
					`r`.`One` = `r`.`Null` AND `r`.`One` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`One` IS NULL AND `r`.`Null` IS NULL
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
					`r`.`Zero` = `r`.`Null` AND `r`.`Zero` IS NOT NULL AND `r`.`Null` IS NOT NULL OR
					`r`.`Zero` IS NULL AND `r`.`Null` IS NULL
			)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FeatureTable`

