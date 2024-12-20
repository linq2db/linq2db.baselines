BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableWithIdentitySrc`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TableWithIdentitySrc`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TableWithIdentitySrc` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableWithIdentity`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TableWithIdentity`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_TableWithIdentity` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 1

INSERT INTO `TableWithIdentitySrc`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @addition Int32
SET     @addition = 123

INSERT INTO `TableWithIdentity`
(
	`Value`
)
SELECT
	`t1`.`Value` + @addition
FROM
	`TableWithIdentitySrc` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableWithIdentity` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableWithIdentity`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TableWithIdentitySrc`

