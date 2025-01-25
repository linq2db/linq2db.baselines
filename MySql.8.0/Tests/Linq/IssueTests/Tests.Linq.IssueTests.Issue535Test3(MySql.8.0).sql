BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomerBase`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CustomerBase`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`ClientType`   CHAR(6)                      NOT NULL,
	`Name`         VARCHAR(4000)                    NULL,
	`ContactEmail` VARCHAR(4000)                    NULL,
	`Enabled`      BOOLEAN                          NULL,

	CONSTRAINT `PK_CustomerBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`cb`.`Id`,
	`cb`.`Name`,
	`cb`.`ContactEmail`,
	`cb`.`Enabled`
FROM
	`CustomerBase` `cb`
WHERE
	`cb`.`ClientType` = 'Client'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CustomerBase`

