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
	((`r`.`One` = `r`.`One`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Zero`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Null` = `r`.`Null`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Zero`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Null`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Null`) = (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`One`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Zero`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Null` = `r`.`Null`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Zero`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Null`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Null`) <> (1=null)) = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `FeatureTable`

