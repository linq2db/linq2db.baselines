-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

