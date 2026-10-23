-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	`m_1`.`ParentID`,
	`m_1`.`Value1`
FROM
	`Parent` `m_1`
ORDER BY
	`m_1`.`ParentID`
LIMIT @take

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

