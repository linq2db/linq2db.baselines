-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Span Int64
SET     @Span = 54000000000

INSERT INTO `SeparatelyDeclaredRowA`
(
	`Id`,
	`Span`
)
VALUES
(
	@Id,
	@Span
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Span Int64
SET     @Span = 54000000000

INSERT INTO `SeparatelyDeclaredRowB`
(
	`Id`,
	`Span`
)
VALUES
(
	@Id,
	@Span
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Id`
FROM
	`SeparatelyDeclaredRowA` `x`,
	`SeparatelyDeclaredRowB` `y`
WHERE
	`x`.`Span` = `y`.`Span`

