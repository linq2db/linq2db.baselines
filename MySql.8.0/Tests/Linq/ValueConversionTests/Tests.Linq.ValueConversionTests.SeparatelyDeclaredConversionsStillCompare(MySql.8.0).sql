-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`
FROM
	`SeparatelyDeclaredRowA` `x`,
	`SeparatelyDeclaredRowB` `y`
WHERE
	`x`.`Span` = `y`.`Span`

