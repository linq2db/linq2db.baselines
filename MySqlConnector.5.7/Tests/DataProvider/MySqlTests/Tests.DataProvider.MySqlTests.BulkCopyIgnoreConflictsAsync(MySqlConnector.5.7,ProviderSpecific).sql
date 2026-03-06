INSERT ASYNC BULK `BulkCopyIgnoreConflictsTable`(ID, Value)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT IGNORE INTO `BulkCopyIgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`BulkCopyIgnoreConflictsTable` `t1`
ORDER BY
	`t1`.`ID`

