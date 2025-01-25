BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ID Int32
SET     @ID = 3
DECLARE @ID_1 Int32
SET     @ID_1 = 4

SELECT
	`n`.`FirstName`,
	`n`.`PersonID`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 'Janet' AS `FirstName`, @ID AS `PersonID`
			UNION ALL
			SELECT 'Doe', @ID_1) `n` ON `p`.`PersonID` = `n`.`PersonID`
ORDER BY
	`n`.`PersonID`

