-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = 0x010203

INSERT INTO `BlobClass`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	@Id,
	@BlobValue
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @BlobValue Blob(3) -- Binary
SET     @BlobValue = 0x030201

UPDATE
	`BlobClass` `t1`
SET
	`t1`.`BlobValue` = @BlobValue
WHERE
	`t1`.`Id` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

