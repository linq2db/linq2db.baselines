BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`        INT NOT NULL,
	`NullValue` INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`a`.`Id`,
	`a`.`NullValue`
FROM
	`SampleClass` `a`
WHERE
	(`a`.`Id` = 0 AND Coalesce(`a`.`NullValue`, 0) = 0 OR `a`.`Id` = 1 AND Coalesce(`a`.`NullValue`, 0) = 1 OR `a`.`Id` = 2 AND Coalesce(`a`.`NullValue`, 0) = 2)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `SampleClass`

