-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `TableWithPrimaryKey2`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey2` PRIMARY KEY CLUSTERED (`Key`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TableWithPrimaryKey2`
(
	`Key`
)
VALUES
(1)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `TableWithPrimaryKey2`

