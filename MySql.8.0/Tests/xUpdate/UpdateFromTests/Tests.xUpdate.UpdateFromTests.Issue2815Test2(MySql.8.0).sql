-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Issue2815Table1` `t1`
		LEFT JOIN `Issue2815Table2` `source` ON `source`.`ISO` = `t1`.`SRC_BIC`
		LEFT JOIN `Issue2815Table2` `destination` ON `destination`.`ISO` = `t1`.`DES_BIC`
		LEFT JOIN `Issue2815Table3` `channel` ON `channel`.`TreasuryCenter` = `t1`.`TREA_CENT` AND `channel`.`BIC` = `t1`.`SRC_BIC` AND `channel`.`Sepa` = CASE
			WHEN `source`.`SEPA` AND `destination`.`SEPA` THEN CASE
				WHEN `source`.`ISO` = `destination`.`ISO` OR `source`.`ISO` IS NULL AND `destination`.`ISO` IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
SET
	`t1`.`TRANS_CHANNEL` = Coalesce(`channel`.`Trans_Channel`, 1),
	`t1`.`IDF` = Coalesce(`channel`.`Idf`, 0)
WHERE
	`t1`.`NOT_HANDLED` = 2 AND `t1`.`TRANS_CHANNEL` IS NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`SRC_BIC`,
	`t1`.`DES_BIC`,
	`t1`.`IDF`,
	`t1`.`TREA_CENT`,
	`t1`.`NOT_HANDLED`,
	`t1`.`TRANS_CHANNEL`
FROM
	`Issue2815Table1` `t1`
ORDER BY
	`t1`.`SRC_BIC`,
	`t1`.`DES_BIC`

