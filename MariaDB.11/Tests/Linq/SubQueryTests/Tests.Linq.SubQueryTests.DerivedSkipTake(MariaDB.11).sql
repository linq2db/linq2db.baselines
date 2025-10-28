BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`t2`.`ParentID`,
	`t2`.`Value1`
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
		LIMIT @skip, @take
	) `t2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

