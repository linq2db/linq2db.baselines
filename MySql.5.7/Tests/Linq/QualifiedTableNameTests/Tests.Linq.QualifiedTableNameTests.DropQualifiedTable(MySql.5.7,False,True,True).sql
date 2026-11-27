-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DROP TABLE IF EXISTS `QualifiedNameTable2`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
CREATE TABLE `QualifiedNameTable2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_QualifiedNameTable2` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DROP TABLE `testdata`.`QualifiedNameTable2`

