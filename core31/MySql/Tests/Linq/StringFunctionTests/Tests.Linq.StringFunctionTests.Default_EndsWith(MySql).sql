BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`CollatedTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CaseSensitive VarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO `CollatedTable`
(
	`Id`,
	`CaseSensitive`,
	`CaseInsensitive`
)
VALUES
(
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stString', `r`.`CaseSensitive`, Length(`r`.`CaseSensitive`) - 7) = (Length(`r`.`CaseSensitive`) - 7)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('stString', `r`.`CaseInsensitive`, Length(`r`.`CaseInsensitive`) - 7) = (Length(`r`.`CaseInsensitive`) - 7)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', `r`.`CaseSensitive`, Length(`r`.`CaseSensitive`) - 7) = (Length(`r`.`CaseSensitive`) - 7)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`CollatedTable` `r`
WHERE
	LOCATE('ststring', `r`.`CaseInsensitive`, Length(`r`.`CaseInsensitive`) - 7) = (Length(`r`.`CaseInsensitive`) - 7)

