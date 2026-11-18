-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

