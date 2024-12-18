BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `FeatureTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`BoolNull`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `FeatureTable`

