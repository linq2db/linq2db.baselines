-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`b`.`Type`,
	`p`.`FullName`
FROM
	`Issue4364_BaseThing` `b`
		INNER JOIN `Issue4364_Interaction` `i` ON `b`.`Id` = `i`.`ThingId`
		INNER JOIN `Issue4364_Person` `p` ON `i`.`PersonId` = `p`.`Id`
WHERE
	`b`.`Type` IN (102, 101)
ORDER BY
	`b`.`Id`

