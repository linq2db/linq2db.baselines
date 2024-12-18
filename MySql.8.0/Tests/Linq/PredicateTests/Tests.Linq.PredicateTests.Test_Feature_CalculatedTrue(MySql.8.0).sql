BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `FeatureTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`One`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Zero`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Null` = `r`.`Null`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Zero`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Null`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Null`) = (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`One`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Zero`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Null` = `r`.`Null`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Zero`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`One` = `r`.`Null`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	((`r`.`Zero` = `r`.`Null`) <> (1=1)) = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `FeatureTable`

