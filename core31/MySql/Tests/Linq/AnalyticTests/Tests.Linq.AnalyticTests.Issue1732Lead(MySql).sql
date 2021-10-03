﻿BeforeExecute
-- MySql

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MySql

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- MySql
DECLARE @group_1 Int32
SET     @group_1 = 7

SELECT
	`p`.`Id`,
	LEAD(`p`.`Id`, 1, -1) OVER(ORDER BY `p`.`Order`)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group_1

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `Position`

