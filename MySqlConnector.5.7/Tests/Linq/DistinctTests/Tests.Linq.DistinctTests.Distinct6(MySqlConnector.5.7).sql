﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ParentID Int32
SET     @ParentID = 0
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(`p`.`Value1`, `p`.`ParentID` + @ParentID),
	@Value1
FROM
	`Parent` `p`

