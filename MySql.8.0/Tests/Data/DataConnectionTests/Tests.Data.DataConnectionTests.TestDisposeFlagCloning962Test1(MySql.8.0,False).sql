BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`CategoryID`,
	`d`.`ProductID`,
	`d`.`ProductName`,
	`d`.`CategoryID`,
	`d`.`QuantityPerUnit`
FROM
	`Categories` `m_1`
		INNER JOIN `Products` `d` ON `m_1`.`CategoryID` = `d`.`CategoryID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`CategoryID`,
	`t1`.`CategoryName`,
	`t1`.`Description`
FROM
	`Categories` `t1`

