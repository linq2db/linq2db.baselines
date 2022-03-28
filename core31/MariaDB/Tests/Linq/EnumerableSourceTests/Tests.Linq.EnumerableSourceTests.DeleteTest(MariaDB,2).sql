BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT          NOT NULL,
	`Value` VARCHAR(255)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(3,'Janet'),
(4,'Doe')

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id` FROM DUAL
			UNION ALL
			SELECT 4 FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

