BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @Value1 Int32
SET     @Value1 = NULL

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 100500

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @id
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 100500
DECLARE @id Int32
SET     @id = 100500

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @ParentID
WHERE
	`p`.`ParentID` = @id AND (
		SELECT
			COUNT(*)
		FROM
			(
				SELECT
					`p_1`.`ParentID`
				FROM
					`Parent` `p_1`
			) `t1`
		WHERE
			`t1`.`ParentID` = @id
	) > 0

