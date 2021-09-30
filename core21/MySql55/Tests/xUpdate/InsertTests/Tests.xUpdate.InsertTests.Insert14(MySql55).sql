BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	LOCATE('Insert14', `t1`.`FirstName`) = 1

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

INSERT INTO `Person`
(
	`FirstName`,
	`LastName`,
	`Gender`
)
VALUES
(
	Concat('Insert14', (
		SELECT
			`p`.`FirstName`
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = 1
		LIMIT @take
	)),
	'Shepard',
	'M'
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	LOCATE('Insert14', `p`.`FirstName`) = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`Person` `t1`
WHERE
	LOCATE('Insert14', `t1`.`FirstName`) = 1

