BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @personId Int32
SET     @personId = 0
DECLARE @personId_1 Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `_4`
					CROSS JOIN (
						SELECT
							COUNT(`_`.`PersonID`) as `c1`
						FROM
							`Patient` `_`
						WHERE
							`_`.`PersonID` = @personId AND `_`.`PersonID` NOT IN (
								SELECT
									`_1`.`PersonID`
								FROM
									`Patient` `_1`
								WHERE
									`_1`.`PersonID` = @personId_1
							)
					) `t1`
					CROSS JOIN (
						SELECT
							COUNT(`_2`.`PersonID`) as `c1`
						FROM
							`Patient` `_2`
						WHERE
							`_2`.`PersonID` = @personId_1 AND `_2`.`PersonID` NOT IN (
								SELECT
									`_3`.`PersonID`
								FROM
									`Patient` `_3`
								WHERE
									`_3`.`PersonID` = @personId
							)
					) `t2`
			WHERE
				`t1`.`c1` = 0 AND `t2`.`c1` = 0
		)
			THEN 1
		ELSE 0
	END as `c1`

