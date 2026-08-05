-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Uid Blob(16) -- Binary
SET     @Uid = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Id Int64
SET     @Id = 0

UPDATE
	`Issue3060Table` `t1`
SET
	`t1`.`Uid` = @Uid
WHERE
	`t1`.`Id` = @Id

