-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Marked Int32
SET     @Marked = 5
DECLARE @Plain Int32
SET     @Plain = 5

INSERT INTO `StorageTransparentRow`
(
	`Id`,
	`Marked`,
	`Plain`
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Marked Int32
SET     @Marked = 6
DECLARE @Plain Int32
SET     @Plain = 7

INSERT INTO `StorageTransparentRow`
(
	`Id`,
	`Marked`,
	`Plain`
)
VALUES
(
	@Id,
	@Marked,
	@Plain
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`StorageTransparentRow` `r`
WHERE
	`r`.`Marked` = `r`.`Plain`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Marked` + `r`.`Plain`
FROM
	`StorageTransparentRow` `r`
ORDER BY
	`r`.`Id`

