BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MRECEIPT`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `MRECEIPT`
(
	`RECEIPT_NO` VARCHAR(4000)     NULL,
	`CUSTKEY`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EXTERNAL_RECEIPTS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EXTERNAL_RECEIPTS`
(
	`RECEIPT_NO` VARCHAR(4000)     NULL,
	`CUSTKEY`    VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CUST_DTL`
(
	`CUSTKEY`   VARCHAR(4000)     NULL,
	`BILLGROUP` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`i_1`.`ReceiptNo`,
	`a_Customer`.`BILLGROUP`
FROM
	(
		SELECT
			`i`.`RECEIPT_NO` as `ReceiptNo`,
			`i`.`CUSTKEY` as `Custkey`
		FROM
			`MRECEIPT` `i`
		UNION ALL
		SELECT
			`t1`.`RECEIPT_NO` as `ReceiptNo`,
			`t1`.`CUSTKEY` as `Custkey`
		FROM
			`EXTERNAL_RECEIPTS` `t1`
	) `i_1`
		LEFT JOIN `CUST_DTL` `a_Customer` ON (`i_1`.`Custkey` = `a_Customer`.`CUSTKEY` OR `i_1`.`Custkey` IS NULL AND `a_Customer`.`CUSTKEY` IS NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CUST_DTL`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EXTERNAL_RECEIPTS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `MRECEIPT`

