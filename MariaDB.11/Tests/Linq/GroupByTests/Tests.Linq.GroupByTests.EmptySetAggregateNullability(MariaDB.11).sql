BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			MIN(`gr`.`ParentID`) as `Min_1`
		FROM
			`Parent` `gr`
		WHERE
			`gr`.`ParentID` = -1
	) `t1`
WHERE
	`t1`.`Min_1` <> 0 OR `t1`.`Min_1` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(`gr`.`ParentID`) as `Max_1`
		FROM
			`Parent` `gr`
		WHERE
			`gr`.`ParentID` = -1
	) `t1`
WHERE
	`t1`.`Max_1` <> 0 OR `t1`.`Max_1` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			AVG(`gr`.`ParentID`) as `Avg_1`
		FROM
			`Parent` `gr`
		WHERE
			`gr`.`ParentID` = -1
	) `t1`
WHERE
	`t1`.`Avg_1` <> 0 OR `t1`.`Avg_1` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			SUM(`gr`.`ParentID`) as `Sum_1`
		FROM
			`Parent` `gr`
		WHERE
			`gr`.`ParentID` = -1
	) `t1`
WHERE
	`t1`.`Sum_1` <> 0 OR `t1`.`Sum_1` IS NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Parent` `gr`
		WHERE
			`gr`.`ParentID` = -1
	) `t1`
WHERE
	`t1`.`Count_1` <> 0

