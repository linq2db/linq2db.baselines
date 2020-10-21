BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Floor(((Exp(`p`.`MoneyValue` / 15) - Exp(-(`p`.`MoneyValue` / 15))) / (Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15)))) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(((Exp(`p`.`MoneyValue` / 15) - Exp(-(`p`.`MoneyValue` / 15))) / (Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15)))) * 15) <> 0.10000000000000001 OR Floor(((Exp(`p`.`MoneyValue` / 15) - Exp(-(`p`.`MoneyValue` / 15))) / (Exp(`p`.`MoneyValue` / 15) + Exp(-(`p`.`MoneyValue` / 15)))) * 15) IS NULL)

