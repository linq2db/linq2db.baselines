-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Column Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	`r`.`ColumnNullable` = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`GuidTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`GuidTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`GuidTable`

INSERT BULK `GuidTable`(Id, Column, ColumnNullable)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

