-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_IsTemporaryTable` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `IsTemporaryTable`

