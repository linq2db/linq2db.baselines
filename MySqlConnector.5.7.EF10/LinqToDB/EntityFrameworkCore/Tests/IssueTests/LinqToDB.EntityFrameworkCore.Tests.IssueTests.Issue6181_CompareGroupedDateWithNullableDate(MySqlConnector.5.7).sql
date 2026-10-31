-- MySql.5.7.MySqlConnector MySql57
DELETE  
FROM
	`Issue6181TableTwos`



-- MySql.5.7.MySqlConnector MySql57
DELETE  
FROM
	`Issue6181TableOnes`



Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = DateTime), @p2='?' (DbType = DateTime), @p3='?' (DbType = DateTime), @p4='?' (Size = 4000), @p5='?' (DbType = DateTime), @p6='?' (DbType = Int32), @p7='?' (DbType = DateTime), @p8='?' (Size = 4000), @p9='?' (DbType = DateTime), @p10='?' (DbType = DateTime), @p11='?' (DbType = DateTime), @p12='?' (DbType = DateTime), @p13='?' (DbType = Int32), @p14='?' (DbType = DateTime), @p15='?' (DbType = DateTime), @p16='?' (DbType = Int32), @p17='?' (DbType = DateTime), @p18='?' (Size = 4000), @p19='?' (DbType = DateTime), @p20='?' (DbType = DateTime), @p21='?' (DbType = DateTime), @p22='?' (DbType = DateTime), @p23='?' (DbType = Int32), @p24='?' (DbType = DateTime), @p25='?' (DbType = DateTime)

INSERT INTO `Issue6181TableOnes` (`Id`, `ChainedOn`, `CreatedOn`, `FromDate`, `Name`, `ToDate`)
VALUES (@p0, @p1, @p2, @p3, @p4, @p5);
INSERT INTO `Issue6181TableTwos` (`Id`, `ChainedDate`, `Code`, `FromDate`, `HeldDate`, `OtherDate`, `OverriddenDate`, `TableOneId`, `ToDate`, `TypedOverriddenDate`)
VALUES (@p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14, @p15),
(@p16, @p17, @p18, @p19, @p20, @p21, @p22, @p23, @p24, @p25);


-- MySql.5.7.MySqlConnector MySql57
SELECT
	`t2`.`Code`,
	`t1`.`MinCreatedOn`,
	`t1`.`ToDate`
FROM
	`Issue6181TableTwos` `t2`
		LEFT JOIN (
			SELECT
				`g_1`.`Id` as `Key_1`,
				MIN(`g_1`.`CreatedOn`) as `MinCreatedOn`,
				MAX(`g_1`.`ToDate`) as `ToDate`
			FROM
				`Issue6181TableOnes` `g_1`
			GROUP BY
				`g_1`.`Id`
		) `t1` ON `t2`.`TableOneId` = `t1`.`Key_1`
WHERE
	`t2`.`FromDate` >= `t1`.`MinCreatedOn`



