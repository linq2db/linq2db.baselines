﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Tag`
(
	`Id`     INT          NOT NULL,
	`FactId` INT          NOT NULL,
	`Name`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT
	`f`.`Id`,
	`ft`.`Id`,
	`ft`.`FactId`,
	`ft`.`Name`
FROM
	`Tag` `ft`
		RIGHT JOIN `Fact` `f` ON `ft`.`FactId` = `f`.`Id`
WHERE
	`f`.`Id` > 3

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Tag`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Fact`

