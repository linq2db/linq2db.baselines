INSERT ASYNC BULK `BulkCopyIgnoreConflictsTable`(ID, Value)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT IGNORE INTO `BulkCopyIgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`BulkCopyIgnoreConflictsTable` `t1`
ORDER BY
	`t1`.`ID`

