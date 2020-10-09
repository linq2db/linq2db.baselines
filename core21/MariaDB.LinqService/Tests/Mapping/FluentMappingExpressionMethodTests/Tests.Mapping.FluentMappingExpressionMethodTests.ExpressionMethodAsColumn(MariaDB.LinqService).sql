BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `InstanceClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110),
(11,111),
(12,112),
(13,113),
(14,114),
(15,115),
(16,116),
(17,117),
(18,118),
(19,119),
(20,120)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t1`.`Id`, 
	`t1`.`Value`
FROM
	`InstanceClass` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `InstanceClass`

