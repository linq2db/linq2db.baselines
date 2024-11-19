--  MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `NoIdentity`
(
	`Id`   char(36) NOT NULL,
	`Name` longtext NOT NULL,

	CONSTRAINT `PK_NoIdentity` PRIMARY KEY CLUSTERED (`Id`)
)



--  MySql.5.7.MySqlConnector MySql57

INSERT INTO `NoIdentity`
(
	`Id`,
	`Name`
)
VALUES
('96aaf84a-46c3-4db3-af03-9f0be8fd660b','John Doe'),
('d98504c1-68dd-422a-85ad-a3d6176943fa','Jane Doe')



--  MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`NoIdentity` `t1`



--  MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `NoIdentity`



