BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`i_2`.`LastName`
FROM
	(
		SELECT
			`i`.`FirstName`,
			`i`.`PersonID` as `ID`,
			`i`.`LastName`,
			`i`.`MiddleName`,
			`i`.`Gender` as `Person_Gender`,
			CASE
				WHEN `i`.`MiddleName` IS NULL
					THEN 'M'
				ELSE 'O'
			END as `Gender`
		FROM
			`Person` `i`
		UNION ALL
		SELECT
			`i_1`.`FirstName`,
			`i_1`.`PersonID` as `ID`,
			`i_1`.`LastName`,
			`i_1`.`MiddleName`,
			`i_1`.`Gender` as `Person_Gender`,
			CASE
				WHEN `i_1`.`MiddleName` IS NULL
					THEN 'M'
				ELSE 'O'
			END as `Gender`
		FROM
			`Person` `i_1`
	) `i_2`
WHERE
	`i_2`.`Gender` = 'O'
ORDER BY
	`i_2`.`FirstName` DESC

