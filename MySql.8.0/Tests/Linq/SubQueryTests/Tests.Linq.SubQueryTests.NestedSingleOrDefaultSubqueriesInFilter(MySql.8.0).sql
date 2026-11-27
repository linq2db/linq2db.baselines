-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p UByte -- Boolean
SET     @p = 1

SELECT
	`thing`.`Id`
FROM
	`NestedFilterThing` `thing`
		LEFT JOIN `NestedFilterState` `s` ON `s`.`ThingId` = `thing`.`Id`
		LEFT JOIN LATERAL (
			SELECT
				`t`.`ThingId`,
				`t`.`TransitionType`
			FROM
				`NestedFilterTransition` `t`
					INNER JOIN `NestedFilterState` `s_1` ON `s_1`.`ThingId` = `thing`.`Id`
			WHERE
				`t`.`ThingId` = `s_1`.`ThingId` AND `t`.`CreatedDate` = `s_1`.`LastTransitionDate`
		) `t1` ON 1=1
WHERE
	CASE
		WHEN `s`.`ThingId` IS NOT NULL THEN `t1`.`ThingId` IS NULL OR `t1`.`TransitionType` <> 'Delete' OR `t1`.`TransitionType` IS NULL
		ELSE @p
	END

