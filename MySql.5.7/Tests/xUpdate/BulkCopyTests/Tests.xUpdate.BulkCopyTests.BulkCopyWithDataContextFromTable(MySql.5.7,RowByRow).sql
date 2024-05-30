BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

