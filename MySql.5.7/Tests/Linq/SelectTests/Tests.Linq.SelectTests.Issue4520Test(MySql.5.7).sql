BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN NOT CASE
			WHEN `i`.`BoolValue` IS NOT NULL THEN `i`.`BoolValue`
			ELSE 0
		END AND CASE
			WHEN `i`.`IntValue` <> (
				SELECT
					`p`.`IntValue`
				FROM
					`LinqDataTypes` `p`
				WHERE
					`p`.`ID` = 2
				LIMIT 1
			)
				THEN 0
			ELSE 1
		END
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `i`
WHERE
	`i`.`ID` = 1

