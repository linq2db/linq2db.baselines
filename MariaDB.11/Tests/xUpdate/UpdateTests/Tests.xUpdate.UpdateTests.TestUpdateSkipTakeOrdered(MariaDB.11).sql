﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1000
DECLARE @Value1 Int32
SET     @Value1 = 1000

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
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

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
DECLARE @ParentID Int32
SET     @ParentID = 1002
DECLARE @Value1 Int32
SET     @Value1 = 1002

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
DECLARE @ParentID Int32
SET     @ParentID = 1003
DECLARE @Value1 Int32
SET     @Value1 = 1003

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
DECLARE @ParentID Int32
SET     @ParentID = 1004
DECLARE @Value1 Int32
SET     @Value1 = 1004

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
DECLARE @ParentID Int32
SET     @ParentID = 1005
DECLARE @Value1 Int32
SET     @Value1 = 1005

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
DECLARE @ParentID Int32
SET     @ParentID = 1006
DECLARE @Value1 Int32
SET     @Value1 = 1006

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
DECLARE @ParentID Int32
SET     @ParentID = 1007
DECLARE @Value1 Int32
SET     @Value1 = 1007

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
DECLARE @ParentID Int32
SET     @ParentID = 1008
DECLARE @Value1 Int32
SET     @Value1 = 1008

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
DECLARE @ParentID Int32
SET     @ParentID = 1009
DECLARE @Value1 Int32
SET     @Value1 = 1009

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
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

UPDATE
	`Parent` `u`,
	(
		SELECT
			`x`.`ParentID`,
			`x`.`Value1`
		FROM
			`Parent` `x`
		WHERE
			`x`.`ParentID` > 1000
		ORDER BY
			`x`.`ParentID` DESC
		LIMIT @skip, @take
	) `t1`
SET
	`u`.`Value1` = 1
WHERE
	`u`.`ParentID` = `t1`.`ParentID` AND (`u`.`Value1` = `t1`.`Value1` OR `u`.`Value1` IS NULL AND `t1`.`Value1` IS NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`Value1`
FROM
	`Parent` `r`
WHERE
	`r`.`ParentID` >= 1000
ORDER BY
	`r`.`ParentID`

