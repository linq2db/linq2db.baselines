-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `p`.`MoneyValue` * 2 = ROUND(`p`.`MoneyValue` * 2, `p`.`ID` % 2 + 1) AND `p`.`MoneyValue` <> ROUND(`p`.`MoneyValue`, `p`.`ID` % 2 + 1)
			THEN ROUND(`p`.`MoneyValue` / 2, `p`.`ID` % 2 + 1) * 2
		ELSE ROUND(`p`.`MoneyValue`, `p`.`ID` % 2 + 1)
	END
FROM
	`LinqDataTypes` `p`
WHERE
	`p`.`MoneyValue` <> 0

