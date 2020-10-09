BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	CASE
		WHEN `p`.`ParentID` = 1 THEN 10
		ELSE 20
	END = 20

