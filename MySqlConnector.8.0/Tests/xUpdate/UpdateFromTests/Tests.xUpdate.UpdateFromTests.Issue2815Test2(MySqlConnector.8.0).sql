BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`Issue2815Table1` `ext`
		LEFT JOIN `Issue2815Table2` `source` ON `source`.`ISO` = `ext`.`SRC_BIC`
		LEFT JOIN `Issue2815Table2` `destination` ON `destination`.`ISO` = `ext`.`DES_BIC`
		LEFT JOIN `Issue2815Table3` `channel` ON `channel`.`TreasuryCenter` = `ext`.`TREA_CENT` AND `channel`.`BIC` = `ext`.`SRC_BIC` AND `channel`.`Sepa` = CASE
			WHEN `source`.`SEPA` AND `destination`.`SEPA` THEN CASE
				WHEN `source`.`ISO` = `destination`.`ISO` OR `source`.`ISO` IS NULL AND `destination`.`ISO` IS NULL
					THEN 0
				ELSE 1
			END
			ELSE 2
		END
SET
	`ext`.`TRANS_CHANNEL` = Coalesce(`channel`.`Trans_Channel`, 0),
	`ext`.`IDF` = `channel`.`Idf`
WHERE
	`ext`.`NOT_HANDLED` = 2 AND `ext`.`TRANS_CHANNEL` IS NULL

