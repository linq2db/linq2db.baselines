-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`billing_TempReading` `tr`
		INNER JOIN `billing_DevReadingType` `drt` ON `drt`.`Name` = `tr`.`ReadingTypeName` AND `drt`.`DevTypeId` = `tr`.`Devtypeid`
SET
	`tr`.`DevReadingTypeId` = `drt`.`Id`,
	`tr`.`Responsibility` = `drt`.`Responsibility`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`billing_TempReading` `t3`
		LEFT JOIN LATERAL (
			SELECT
				`w`.`Id`
			FROM
				`billing_DevReadingType` `w`
			WHERE
				`w`.`Name` = `t3`.`ReadingTypeName` AND `w`.`DevTypeId` = `t3`.`Devtypeid`
			LIMIT 1
		) `t1` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				`w_1`.`Responsibility`
			FROM
				`billing_DevReadingType` `w_1`
			WHERE
				`w_1`.`Name` = `t3`.`ReadingTypeName` AND `w_1`.`DevTypeId` = `t3`.`Devtypeid`
			LIMIT 1
		) `t2` ON 1=1
SET
	`t3`.`DevReadingTypeId` = `t1`.`Id`,
	`t3`.`Responsibility` = `t2`.`Responsibility`

