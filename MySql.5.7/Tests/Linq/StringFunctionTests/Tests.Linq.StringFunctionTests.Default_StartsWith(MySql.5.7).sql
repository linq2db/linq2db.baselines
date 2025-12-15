-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`CollatedTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE 'TestSt%' ESCAPE '~'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE 'TestSt%' ESCAPE '~'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseSensitive` LIKE 'testst%' ESCAPE '~'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`CollatedTable` `r`
WHERE
	`r`.`CaseInsensitive` LIKE 'testst%' ESCAPE '~'

