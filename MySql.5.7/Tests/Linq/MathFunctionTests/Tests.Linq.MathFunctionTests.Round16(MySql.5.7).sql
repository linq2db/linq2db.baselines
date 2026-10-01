-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CASE
		WHEN `p`.`MoneyValue` * 2 = ROUND(`p`.`MoneyValue` * 2, `p`.`ID` % 2 + 2) AND `p`.`MoneyValue` <> ROUND(`p`.`MoneyValue`, `p`.`ID` % 2 + 2)
			THEN ROUND(`p`.`MoneyValue` / 2, `p`.`ID` % 2 + 2) * 2
		ELSE ROUND(`p`.`MoneyValue`, `p`.`ID` % 2 + 2)
	END
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`MoneyValue` <> 0

