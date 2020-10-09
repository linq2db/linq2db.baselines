BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue464`
(
	`Id`    INT NOT NULL,
	`Value` INT     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Issue464`
(
	`Id`,
	`Value`
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`t1`.`Id`, 
	`t1`.`Value`
FROM
	`Issue464` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Issue464`

