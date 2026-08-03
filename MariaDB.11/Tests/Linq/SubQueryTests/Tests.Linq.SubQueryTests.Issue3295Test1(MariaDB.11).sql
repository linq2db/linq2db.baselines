-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN `t1`.`PersonID` IS NOT NULL THEN `t1`.`PersonID`
		ELSE `x`.`PersonID`
	END,
	CASE
		WHEN `t1`.`PersonID` IS NOT NULL THEN `t1`.`Diagnosis`
		ELSE 'abc'
	END
FROM
	`Person` `x`
		LEFT JOIN (
			SELECT
				`y`.`PersonID`,
				`y`.`Diagnosis`,
				ROW_NUMBER() OVER (PARTITION BY `y`.`PersonID` ORDER BY `y`.`PersonID`) as `rn`
			FROM
				`Patient` `y`
		) `t1` ON `t1`.`PersonID` = `x`.`PersonID` AND `t1`.`rn` = 1
WHERE
	`t1`.`PersonID` IS NULL OR `t1`.`Diagnosis` = 'abc'

