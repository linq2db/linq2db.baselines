BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Tag`
(
	`Id`     INT          NOT NULL,
	`FactId` INT          NOT NULL,
	`Name`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	`ft`.`Id`, 
	`t`.`Id`, 
	`t`.`FactId`, 
	`t`.`Name`
FROM
	`Fact` `ft`
		LEFT JOIN `Tag` `t` ON `t`.`FactId` = `ft`.`Id`
WHERE
	`ft`.`Id` > 3

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Tag`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Fact`

