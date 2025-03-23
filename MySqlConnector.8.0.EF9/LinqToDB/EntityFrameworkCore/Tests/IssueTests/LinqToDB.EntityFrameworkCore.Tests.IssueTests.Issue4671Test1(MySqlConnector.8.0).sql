-- MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `Issue4671Entity1TMP`
(
	`Id`    int AUTO_INCREMENT NOT NULL,
	`Value` int                NOT NULL,

	CONSTRAINT `PK_Issue4671Entity1TMP` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4671Entity1`
(
	`Value`
)
VALUES
(
	1
)



-- MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4671Entity1TMP`
(
	`Value`
)
VALUES
(
	2
)



-- MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1` `t1`
LIMIT 2



-- MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1TMP` `t1`
LIMIT 2



-- MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `Issue4671Entity1TMP`



