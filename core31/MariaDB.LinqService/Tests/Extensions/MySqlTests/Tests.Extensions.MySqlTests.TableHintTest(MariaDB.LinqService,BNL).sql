BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ BNL(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

