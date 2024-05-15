BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WhereCases`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `WhereCases`
(
	`Id`                INT     NOT NULL,
	`BoolValue`         BOOLEAN NOT NULL,
	`NullableBoolValue` BOOLEAN     NULL,

	CONSTRAINT `PK_WhereCases` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(1,1,NULL),
(2,1,1),
(3,1,NULL),
(4,1,1),
(5,1,1),
(11,0,NULL),
(12,0,0),
(13,0,NULL),
(14,0,0),
(15,0,0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`BoolValue`,
	`t1`.`NullableBoolValue`
FROM
	`WhereCases` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 1 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 1 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	(`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT ((`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` = 1 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` = 1 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL)) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT (`t`.`BoolValue` = 0 AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL)) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`NullableBoolValue` = 0 AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT (`t`.`BoolValue` = 0 AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WhereCases`

