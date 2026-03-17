-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE `Issue4671EntityTMP`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue4671EntityTMP` PRIMARY KEY CLUSTERED (`Id`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4671Entity`
(
	`Value`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4671EntityTMP`
(
	`Value`
)
VALUES
(
	2
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671EntityTMP` `t1`
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `Issue4671EntityTMP`

