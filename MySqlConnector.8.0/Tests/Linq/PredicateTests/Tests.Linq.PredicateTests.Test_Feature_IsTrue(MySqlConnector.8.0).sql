BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `FeatureTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`One`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Zero`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Null` = `r`.`Null`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Zero`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`One` = `r`.`Null`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	(`r`.`Zero` = `r`.`Null`) IS NOT TRUE

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `FeatureTable`

