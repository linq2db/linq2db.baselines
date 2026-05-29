Parameters:
@p0='?' (Size = 4000), @p1='?' (DbType = Int32), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000), @p5='?' (DbType = Int32), @p6='?' (Size = 4000), @p7='?' (Size = 4000), @p8='?' (DbType = Int32), @p9='?' (Size = 4000), @p10='?' (Size = 4000), @p11='?' (Size = 4000), @p12='?' (DbType = Int32), @p13='?' (Size = 4000), @p14='?' (Size = 4000), @p15='?' (DbType = Int32), @p16='?' (Size = 4000), @p17='?' (Size = 4000), @p18='?' (Size = 4000), @p19='?' (DbType = Int32), @p20='?' (Size = 4000)

INSERT INTO `Issue4783Records` (`NullableStatusConverter`, `NullableStatusRaw`, `NullableStatusString`, `Source`, `StatusConverter`, `StatusRaw`, `StatusString`)
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING `Id`;
INSERT INTO `Issue4783Records` (`NullableStatusConverter`, `NullableStatusRaw`, `NullableStatusString`, `Source`, `StatusConverter`, `StatusRaw`, `StatusString`)
VALUES (@p7, @p8, @p9, @p10, @p11, @p12, @p13)
RETURNING `Id`;
INSERT INTO `Issue4783Records` (`NullableStatusConverter`, `NullableStatusRaw`, `NullableStatusString`, `Source`, `StatusConverter`, `StatusRaw`, `StatusString`)
VALUES (@p14, @p15, @p16, @p17, @p18, @p19, @p20)
RETURNING `Id`;


-- MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue4783Records`
(
	`Source`,
	`StatusRaw`,
	`StatusString`,
	`StatusConverter`,
	`NullableStatusRaw`,
	`NullableStatusString`,
	`NullableStatusConverter`
)
VALUES
('linq2db',0,'Open','Open',0,'Open','Open'),
('linq2db',1,'Closed','Closed',1,'Closed','Closed'),
('linq2db',1,'Closed','Closed',NULL,NULL,NULL)



-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Source`,
	`t1`.`StatusRaw`,
	`t1`.`StatusString`,
	`t1`.`StatusConverter`,
	`t1`.`NullableStatusRaw`,
	`t1`.`NullableStatusString`,
	`t1`.`NullableStatusConverter`
FROM
	`Issue4783Records` `t1`
ORDER BY
	`t1`.`Id`



