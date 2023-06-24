BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `IsNullOrEmptyTable`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `IsNullOrEmptyTable`
(
	`Id`,
	`Value`
)
VALUES
(1,'x   '),
(2,'xxxx ')

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`Id`,
	`p`.`Value`
FROM
	`IsNullOrEmptyTable` `p`
WHERE
	Char_Length(`p`.`Value`) = 4

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `IsNullOrEmptyTable`

