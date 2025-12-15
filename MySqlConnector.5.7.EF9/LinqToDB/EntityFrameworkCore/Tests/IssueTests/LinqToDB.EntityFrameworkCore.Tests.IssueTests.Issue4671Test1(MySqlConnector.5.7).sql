-- MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `Issue4671Entity1TMP`
(
	`Id`    int AUTO_INCREMENT NOT NULL,
	`Value` int                NOT NULL,

	CONSTRAINT `PK_Issue4671Entity1TMP` PRIMARY KEY CLUSTERED (`Id`)
)



-- MySql.5.7.MySqlConnector MySql57

INSERT INTO `Issue4671Entity1`
(
	`Value`
)
VALUES
(
	1
)



-- MySql.5.7.MySqlConnector MySql57

INSERT INTO `Issue4671Entity1TMP`
(
	`Value`
)
VALUES
(
	2
)



-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1` `t1`
LIMIT 2



-- MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1TMP` `t1`
LIMIT 2



-- MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `Issue4671Entity1TMP`



