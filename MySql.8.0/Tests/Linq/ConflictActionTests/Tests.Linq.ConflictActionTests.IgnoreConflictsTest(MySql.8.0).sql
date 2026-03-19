-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `IgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'original1'),
(2,'original2')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT IGNORE INTO `IgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`IgnoreConflictsTable` `t1`
ORDER BY
	`t1`.`ID`

